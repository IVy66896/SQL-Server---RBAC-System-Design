CREATE PROCEDURE [dbo].[usp_SystemM_xUpdateOrNotLogoutDate] 
	@UserID int,
    @LoginDate  datetime,
	@SystemPowerCateID int,
	@Chk INT OUT
AS
BEGIN
	 SET NOCOUNT ON;
		 SET @Chk=1
		Declare @LogoutDate datetime=null
		select @LogoutDate=LogoutDate from dbo.U_UserLogin
		WHERE UserID=@UserID and LoginDate=@LoginDate and SystemPowerCateID =@SystemPowerCateID
		
		if(@LogoutDate!=null)
		BEGIN 
			UPDATE dbo.U_UserLogin SET LogOutDate=getdate()
			WHERE UserID=@UserID and LoginDate=@LoginDate
		
			IF @@Error <> 0 or @@ROWCOUNT=0 BEGIN SET @Chk = 0 END
		END
		
END
