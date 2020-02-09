CREATE TABLE [dbo].[U_UserInfo] (
	[UserID] int NOT NULL PRIMARY KEY CLUSTERED, 
	[Sex] bit NOT NULL, 
	[Email] varchar(320) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL, 
	[PhoneNumber] nvarchar(25) COLLATE Chinese_Taiwan_Stroke_CI_AS, 
	[Title] nvarchar(20) COLLATE Chinese_Taiwan_Stroke_CI_AS
) ON [PRIMARY]
