CREATE TABLE [dbo].[U_UserModule] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[UserID] int NOT NULL, 
	[ModuleID] int NOT NULL, 
	[PowerString] int NOT NULL DEFAULT ((0))
) ON [PRIMARY]
