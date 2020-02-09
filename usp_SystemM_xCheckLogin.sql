CREATE PROCEDURE [dbo].[usp_SystemM_xCheckLogin] 
	@LoginName NVARCHAR(50),
	@LoginPassword NVARCHAR(100), 
	@FunctionIndex INT=0,
	@UserCount INT OUT
AS
BEGIN
	 SET NOCOUNT ON;
	 --DECLARE UserCount int
	 --SET @UserCount = 0
	 SELECT @UserCount = COUNT(1) FROM dbo.U_User WITH (NOLOCK)
	 WHERE LoginName=@LoginName and LoginPassword=@LoginPassword 
	 and ( SUBSTRING(dbo.ConvertToBase(SystemPowerString, 2),@FunctionIndex,1)='1' )
	 and EnableState=1
    
END
