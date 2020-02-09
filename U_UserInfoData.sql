CREATE TABLE [dbo].[U_UserInfoData] (
	[UserID] int NOT NULL DEFAULT ((0)) PRIMARY KEY CLUSTERED, 
	[ApplyReason] nvarchar(100) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[ApplyRemark] nvarchar(100) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT (''), 
	[CheckDescription] nvarchar(100) COLLATE Chinese_Taiwan_Stroke_CI_AS NOT NULL DEFAULT ('')
) ON [PRIMARY]
