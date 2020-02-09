CREATE TABLE [dbo].[A_AccountCheck] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[CheckYear] int NOT NULL DEFAULT ((0)), 
	[CheckOrgID] int NOT NULL DEFAULT ((0)), 
	[CheckNumber] int NOT NULL DEFAULT ((0)), 
	[BeContinue] int NOT NULL DEFAULT ((0)), 
	[BeBreak] int NOT NULL DEFAULT ((0)), 
	[BeUnconfirmed] int NOT NULL DEFAULT ((0)), 
	[ApplyUserID] int NOT NULL DEFAULT ((0)), 
	[ApplyDate] datetime NOT NULL DEFAULT (getdate()), 
	[CreatedUserID] int NOT NULL DEFAULT ((0)), 
	[CreatedDate] datetime NOT NULL DEFAULT (getdate()), 
	[CheckProgress] int NOT NULL DEFAULT ((0)), 
	[YearSeason] int NOT NULL DEFAULT ((0))
) ON [PRIMARY]
