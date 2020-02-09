CREATE PROCEDURE [dbo].[usp_SystemM_xCheckPower] 
	@UserID INT=0,
	@PageUrl NVARCHAR(200)='',
	@FunctionIndex INT=0,
	@ModuleCateID INT=0,
	@HasPower BIT=0  OUT
AS
BEGIN
	SET NOCOUNT ON
	SET @HasPower = 0

	IF(@UserID = 1)
		BEGIN
			SET @HasPower = 1
			return
		END
    ELSE
	BEGIN
	    --101010
		--顯示 = 1
		--瀏覽 = 2,
		--新增 = 3,
		--修改 = 4,
		--刪除 = 5,
		--查詢 = 6,
		--列印 = 7,
		--下載 = 8,
		--審核 = 9,
		--特權 = 10,
		-- 特審載列查刪修增瀏顯
		-- 1 1 1 1 1 1 1 1 1 1
		-- User權限
		
		--DECLARE @UserModuleCount INT 
		--SELECT @UserModuleCount= count(1) FROM dbo.M_Module m ,dbo.U_UserModule um 
		--WHERE um.UserID=@UserID  
		--	AND m.ID=um.ModuleID  
		--	AND m.PID<>0  
		--	AND CHARINDEX(m.PageUrl,@PageUrl)>0 
		--	AND (SUBSTRING(dbo.ConvertToBase(um.PowerString, 2),@FunctionIndex,1)='1' OR SUBSTRING(SUBSTRING(dbo.ConvertToBase(um.PowerString, 2),6,1)='1')
		--IF (@UserModuleCount>0)
		--BEGIN
		--	SET @HasPower = 1
		--	RETURN 
		--END
		-- Role權限
		DECLARE @rmcount INT
		SELECT @rmcount=count(1) FROM dbo.U_UserRole ur,dbo.R_RoleModule rm,dbo.M_Module m  WITH (NOLOCK)
		WHERE ur.UserID=@userid 
			and ur.RoleID=rm.RoleID 
			and m.id=rm.ModuleID and m.ModuleCateID = @ModuleCateID
			--and m.PID<>0 
			and CHARINDEX(m.PageUrl,@PageUrl)>0 
			and (SUBSTRING(Reverse(dbo.ConvertToBase(rm.PowerString, 2)),@FunctionIndex,1)='1' ) 
		--Print @rmcount
		IF (@rmcount>0)
		BEGIN
			SET @HasPower = 1
			RETURN 
		END
	END
END
