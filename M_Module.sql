CREATE TABLE [dbo].[M_Module] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[ModuleName] nvarchar(30) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[PageUrl] nvarchar(200) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[OrderNumber] int NOT NULL DEFAULT ((0)), 
	[IsShow] bit NOT NULL DEFAULT ((0)), 
	[PID] int NOT NULL DEFAULT ((0)), 
	[ModuleCateID] int NOT NULL DEFAULT ((0))
) ON [PRIMARY]
