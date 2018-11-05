USE [KumuApp]
GO
/****** Object:  Table [dbo].[PlantMasterTbl]    Script Date: 11/4/2018 2:35:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlantMasterTbl](
	[PlantID] [bigint] IDENTITY(1,1) NOT NULL,
	[PlantTaxaName] [nvarchar](255) NOT NULL,
	[PlantCommonName] [nvarchar](255) NULL,
	[PlantFedStatus] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PlantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
