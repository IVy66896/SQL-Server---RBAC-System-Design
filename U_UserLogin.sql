CREATE TABLE [dbo].[U_UserLogin] (
	[UserID] int NOT NULL DEFAULT ((0)), 
	[LoginIP] varchar(40) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[LoginDate] datetime NOT NULL DEFAULT (getdate()), 
	[LogoutDate] datetime, 
	[SystemPowerCateID] int NOT NULL DEFAULT ((0)), 
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED
) ON [PRIMARY]
