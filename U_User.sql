CREATE TABLE [dbo].[U_User] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[LoginName] nvarchar(30) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[LoginPassword] nvarchar(100) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[OrgID] int NOT NULL DEFAULT ((0)), 
	[UserName] nvarchar(10) COLLATE Chinese_Taiwan_Stroke_CI_AS DEFAULT (''), 
	[EnableState] int NOT NULL DEFAULT ((0)), 
	[RocID] char(10) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[CheckState] int NOT NULL DEFAULT ((0)), 
	[LastLoginDate] datetime, 
	[IsBusiness] bit NOT NULL DEFAULT ((0)), 
	[ApplyDate] datetime NOT NULL DEFAULT (getdate()), 
	[SystemPowerString] int NOT NULL DEFAULT ((0)), 
	[CreatedDate] datetime NOT NULL DEFAULT (getdate()), 
	[CreatedUserID] int NOT NULL DEFAULT ((0))
) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [UQ__U_User__DB8464FF967DEB79]
	ON [dbo].[U_User] ([LoginName])
	WITH (PAD_INDEX=OFF
	,STATISTICS_NORECOMPUTE=OFF
	,IGNORE_DUP_KEY=OFF
	,ALLOW_ROW_LOCKS=ON
	,ALLOW_PAGE_LOCKS=ON) ON [PRIMARY]
