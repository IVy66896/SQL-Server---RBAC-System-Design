CREATE TABLE [dbo].[O_OrgAllowIP] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[OrgID] int NOT NULL DEFAULT ((0)), 
	[IpStart] varchar(40) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[IpEnd] varchar(40) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[LogicDel] bit NOT NULL DEFAULT ((0))
) ON [PRIMARY]
