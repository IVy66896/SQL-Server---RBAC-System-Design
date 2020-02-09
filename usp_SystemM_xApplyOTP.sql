CREATE PROCEDURE [dbo].[usp_SystemM_xApplyOTP] 
	@UserName nvarchar(10),
	@RocID char(10),
	@Email varchar(300)
AS
BEGIN
	SET NOCOUNT ON;
	DECLARE @UserID INT = 0
	DECLARE @OTPID INT = 0
	SELECT @UserID=ID FROM [dbo].[U_User] U JOIN [dbo].[U_UserInfo] I ON U.ID = I.UserID WHERE U.UserName=@UserName AND U.RocID=@RocID AND I.Email=@Email;
	IF(@UserID>0)
	BEGIN
		INSERT INTO [dbo].[U_UserOTP] ([UserID]) VALUES (@UserID);
		SELECT @OTPID = @@IDENTITY;
	END
	SELECT @UserID UserID,@OTPID OTPID
END
