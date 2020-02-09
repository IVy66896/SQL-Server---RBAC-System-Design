CREATE TABLE [dbo].[R_RoleCate] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[RoleCateName] nvarchar(20) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT ('')
) ON [PRIMARY]
