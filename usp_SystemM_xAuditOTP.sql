CREATE PROCEDURE [dbo].[usp_SystemM_xAuditOTP] 
	@ID INT,
	@AuditStatus INT,
	@AuditComment NVARCHAR(300),
	@AuditTime DateTime,
	@OTPCode varchar(10),
	@IsBusiness bit,
	@AuditUserID int
AS
BEGIN
	SET NOCOUNT ON;
	UPDATE [dbo].[U_UserOTP] SET AuditTime=@AuditTime,AuditStatus=@AuditStatus,AuditComment=@AuditComment,IsBusiness=@IsBusiness,OTPCode=@OTPCode,AuditUserID=@AuditUserID WHERE [ID]=@ID AND LoginTime is null AND AuditStatus=1
END
