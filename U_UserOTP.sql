CREATE TABLE [dbo].[U_UserOTP] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[UserID] int NOT NULL, 
	[CreateDate] datetime NOT NULL DEFAULT (getdate()), 
	[AuditStatus] smallint NOT NULL DEFAULT ((1)), 
	[OTPCode] varchar(10) COLLATE Chinese_Taiwan_Stroke_CI_AS, 
	[AuditTime] datetime, 
	[AuditComment] nvarchar(100) COLLATE Chinese_Taiwan_Stroke_CI_AS, 
	[LoginTime] datetime, 
	[IsBusiness] bit, 
	[AuditUserID] int
) ON [PRIMARY]
