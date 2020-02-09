CREATE TABLE [dbo].[O_OrgChangeLog] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[AgencyCode] varchar(10) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[OrgAgencyName] nvarchar(20) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[BusinessState] int NOT NULL DEFAULT ((0)), 
	[ChangeDate] datetime NOT NULL DEFAULT (getdate()), 
	[OrgID] int NOT NULL DEFAULT ((0))
) ON [PRIMARY]
