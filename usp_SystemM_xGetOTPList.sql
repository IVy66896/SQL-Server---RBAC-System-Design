CREATE PROCEDURE [dbo].[usp_SystemM_xGetOTPList] 
	@AccountOrName nvarchar(50)='',
	@OrgName nvarchar(50)='',
	@AuditStatus varchar(10),
	@pgNow INT=1,
	@pgSize INT=10 
AS
DECLARE @SQL VARCHAR(1000),@SQL1 VARCHAR(1000)
	BEGIN 
		SET @SQL='SELECT * FROM 
				(
				SELECT ROW_NUMBER() OVER (ORDER BY a.CreateDate desc,a.AuditStatus ASC,u.LoginName ASC) AS SID,a.ID,a.UserID,u.RocID,u.UserName,o.OrgAgencyName,CONVERT(char(19), a.CreateDate, 120) ApplyTime,a.AuditStatus FROM [dbo].[U_UserOTP] a JOIN [dbo].[U_User] u ON a.UserID=u.ID JOIN [dbo].[O_Org] o ON o.ID = u.OrgID
				WHERE 1=1 '
		SET @SQL1='SELECT count(1) AS ''rdCount'','+CAST( @pgNow AS varchar)+' AS ''pgNow'','+CAST( @pgSize AS varchar)+' AS ''pgSize'' FROM 
					(
					SELECT ROW_NUMBER() OVER (ORDER BY a.AuditStatus,u.LoginName ASC) AS SID,a.ID,a.UserID,u.RocID,u.UserName,o.OrgAgencyName,a.CreateDate,a.AuditStatus FROM [dbo].[U_UserOTP] a JOIN [dbo].[U_User] u ON a.UserID=u.ID JOIN [dbo].[O_Org] o ON o.ID = u.OrgID
					WHERE 1=1 '
		IF @AccountOrName!=''
		BEGIN
			SET @SQL = @SQL + N' and (u.LoginName like ''%'+ @AccountOrName + '%'' or u.UserName like ''%'+ @AccountOrName + '%'')'
			SET @SQL1 = @SQL1 + N' and (u.LoginName like ''%'+ @AccountOrName + '%'' or u.UserName like ''%'+ @AccountOrName + '%'')'
		END
		IF @OrgName!=''
		BEGIN
			SET @SQL = @SQL + N' and o.OrgAgencyName like ''%'+ @OrgName + '%'''
			SET @SQL1 = @SQL1 + N' and o.OrgAgencyName like ''%'+ @OrgName + '%'''
		END
		IF(@AuditStatus>0)
		BEGIN
			SET @SQL = @SQL + ' and a.AuditStatus =' + @AuditStatus
			SET @SQL1 = @SQL1 + ' and a.AuditStatus =' + @AuditStatus
		END
			SET @SQL=@SQL+' ORDER BY SID ASC OFFSET ('+CAST( @pgNow AS varchar)+'-1)*'+CAST( @pgSize AS varchar)+' ROWS FETCH NEXT '+CAST( @pgSize AS varchar)+' ROWS ONLY
						)t'
			SET @SQL1=@SQL1+')t'
		EXEC(@SQL)
		EXEC(@SQL1)
		--SELECT @SQL
END
