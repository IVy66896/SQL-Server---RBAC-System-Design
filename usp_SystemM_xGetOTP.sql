CREATE PROCEDURE [dbo].[usp_SystemM_xGetOTP] 
	@ID int,
	@UserID int,
	@IsCheckIn bit
AS
BEGIN
	SET NOCOUNT ON;
	IF(@IsCheckIn = 0)
		SELECT * FROM [dbo].[U_UserOTP] WHERE [ID]=@ID AND [UserID]=@UserID
	ELSE
		SELECT * FROM [dbo].[U_UserOTP] WHERE [ID]=@ID AND [UserID]=@UserID AND LoginTime is null
END
