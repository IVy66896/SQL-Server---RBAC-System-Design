CREATE TABLE [dbo].[R_RoleModule] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[RoleID] int NOT NULL, 
	[ModuleID] int NOT NULL, 
	[PowerString] int NOT NULL DEFAULT ((0))
) ON [PRIMARY]
