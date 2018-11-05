USE [KumuApp]
GO
/****** Object:  Table [dbo].[IslandMasterTbl]    Script Date: 11/4/2018 2:35:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IslandMasterTbl](
	[IslandID] [int] IDENTITY(1,1) NOT NULL,
	[IslandName] [nvarchar](50) NOT NULL,
	[IslandNameEquiv] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IslandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
