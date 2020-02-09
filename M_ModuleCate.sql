CREATE TABLE [dbo].[M_ModuleCate] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[ModuleCateName] nvarchar(20) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT ('')
) ON [PRIMARY]
