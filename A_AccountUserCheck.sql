CREATE TABLE [dbo].[A_AccountUserCheck] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[AccountCheckID] int NOT NULL DEFAULT ((0)), 
	[UserID] int NOT NULL DEFAULT ((0)), 
	[IsBeContinue] bit NOT NULL DEFAULT ((0)), 
	[IsNotContinueReason] nvarchar(50) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[CreatedUserID] int NOT NULL DEFAULT ((0)), 
	[CreatedDate] datetime NOT NULL DEFAULT (getdate())
) ON [PRIMARY]
