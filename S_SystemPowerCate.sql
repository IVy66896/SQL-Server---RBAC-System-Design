CREATE TABLE [dbo].[S_SystemPowerCate] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[SystemPowerCateName] nvarchar(20) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[SystemPowerCateIndex] int NOT NULL DEFAULT ((0))
) ON [PRIMARY]
