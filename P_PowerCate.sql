CREATE TABLE [dbo].[P_PowerCate] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[PowerCateName] nvarchar(20) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[PowerCateIndex] int NOT NULL DEFAULT ((0))
) ON [PRIMARY]
