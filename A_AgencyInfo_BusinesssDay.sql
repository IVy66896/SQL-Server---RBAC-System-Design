CREATE TABLE [dbo].[A_AgencyInfo_BusinesssDay] (
	[ID] int NOT NULL IDENTITY(1,1) PRIMARY KEY CLUSTERED, 
	[AgencyInfoID] int NOT NULL DEFAULT ((0)), 
	[Monday] bit NOT NULL DEFAULT ((0)), 
	[Tuesday] bit NOT NULL DEFAULT ((0)), 
	[Wednesday] bit NOT NULL DEFAULT ((0)), 
	[Thursday] bit NOT NULL DEFAULT ((0)), 
	[Friday] bit NOT NULL DEFAULT ((0)), 
	[Saturday] bit NOT NULL DEFAULT ((0)), 
	[Sunday] bit NOT NULL DEFAULT ((0))
) ON [PRIMARY]
