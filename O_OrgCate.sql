CREATE TABLE [dbo].[O_OrgCate] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[OrgCateName] nvarchar(20) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL
) ON [PRIMARY]
