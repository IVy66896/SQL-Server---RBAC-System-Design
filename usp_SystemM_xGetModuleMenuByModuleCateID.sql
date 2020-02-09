CREATE PROCEDURE [dbo].[usp_SystemM_xGetModuleMenuByModuleCateID] 
(
	@UserID INT,
	@ModuleCateID INT
)
As 
BEGIN
	SET NOCOUNT ON
    DECLARE @RoleID INT
	SET @RoleID = 0
 
	IF(@UserID=1)
		SELECT ID,ModuleName,PageUrl,PID FROM dbo.M_Module WITH (NOLOCK)
		WHERE IsShow=1 and ModuleCateID=@ModuleCateID ORDER BY  PID,OrderNumber,ID
	ELSE
		SELECT * FROM dbo.M_Module WITH (NOLOCK)
		WHERE IsShow=1 and ModuleCateID=@ModuleCateID and (
			--ID in (select ModuleID from U_UserModule where UserID=@userid and PowerStr<>'000000')
			--or 
			ID in (
					SELECT ModuleID FROM dbo.R_RoleModule WITH (NOLOCK) WHERE 
					(
						RoleID IN (SELECT RoleID FROM dbo.U_UserRole WHERE UserID=@UserID) 
						--or 
						--RoleID in (Select ID From dbo.R_Role Where RolePath like '%/'+ convert(varchar,@RoleID)+'/%')
					)
					--and PowerStr<>'' 
					and Right(dbo.ConvertToBase(PowerString, 2),1)='1' 
				  )
			--or 
			--PID=0 )
		
		)ORDER BY  PID,OrderNumber,ID
END
