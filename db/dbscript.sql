USE [master]
GO
/****** Object:  Database [KumuApp]    Script Date: 11/4/2018 7:19:10 AM ******/
CREATE DATABASE [KumuApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KumuApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\KumuApp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KumuApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\KumuApp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [KumuApp] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KumuApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KumuApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KumuApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KumuApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KumuApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KumuApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [KumuApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KumuApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KumuApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KumuApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KumuApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KumuApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KumuApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KumuApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KumuApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KumuApp] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KumuApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KumuApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KumuApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KumuApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KumuApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KumuApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KumuApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KumuApp] SET RECOVERY FULL 
GO
ALTER DATABASE [KumuApp] SET  MULTI_USER 
GO
ALTER DATABASE [KumuApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KumuApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KumuApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KumuApp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [KumuApp] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'KumuApp', N'ON'
GO
ALTER DATABASE [KumuApp] SET QUERY_STORE = OFF
GO
USE [KumuApp]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [KumuApp]
GO
/****** Object:  User [KumuUser]    Script Date: 11/4/2018 7:19:10 AM ******/
CREATE USER [KumuUser] FOR LOGIN [KumuUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[FormTbl]    Script Date: 11/4/2018 7:19:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormTbl](
	[FormID] [bigint] IDENTITY(1,1) NOT NULL,
	[UID] [bigint] NOT NULL,
	[PlantType] [nvarchar](50) NOT NULL,
	[PlantTaxaName] [nvarchar](255) NOT NULL,
	[IslandID] [int] NOT NULL,
	[PopulationReferenceArea] [nvarchar](10) NOT NULL,
	[PopulationReferenceSite] [nvarchar](10) NOT NULL,
	[LocationNotes] [nvarchar](255) NULL,
	[NumberMaturePlants] [int] NULL,
	[NumberImmaturePlants] [int] NULL,
	[NumberSeedlings] [int] NULL,
	[PlantTagged] [bit] NULL,
	[Sex] [nvarchar](50) NULL,
	[HeightInMeters] [decimal](10, 4) NULL,
	[BasalDiameterCM] [decimal](10, 4) NULL,
	[Age] [nvarchar](50) NULL,
	[ReproductiveStatus] [nvarchar](50) NULL,
	[Vigor] [nvarchar](50) NULL,
	[AmountImmatureFruitCollected] [int] NULL,
	[AmountMatureFruitCollected] [int] NULL,
	[AmountCuttingsCollected] [int] NULL,
	[AmountAirLayersCollected] [int] NULL,
	[AmountFlowersCollected] [int] NULL,
	[PercPlantsVegetative] [int] NULL,
	[PercPlantsFlowerBuds] [int] NULL,
	[PercPlantsInFlower] [int] NULL,
	[PercPlantsImmatureFruit] [int] NULL,
	[PercPlantsMatureFruit] [int] NULL,
	[PercPlantsHealthy] [int] NULL,
	[PercPlantsModerate] [int] NULL,
	[PercPlantsPoor] [int] NULL,
	[PercPlantsDead] [int] NULL,
	[PercPlantsFullSun] [int] NULL,
	[PercPlantsPartialSun] [int] NULL,
	[PercPlantsPartialShade] [int] NULL,
	[PercPlantsDeepShade] [int] NULL,
	[OverstoryClosure] [nvarchar](80) NULL,
	[OverstoryHeight] [nvarchar](80) NULL,
	[UnderstoryClosure] [nvarchar](80) NULL,
	[SoilDranage] [nvarchar](80) NULL,
	[Topography] [nvarchar](50) NULL,
	[Aspect] [nvarchar](20) NULL,
	[AssociatedOverstorySpecies] [nvarchar](100) NULL,
	[AssociatedUnderstorySpecies] [nvarchar](100) NULL,
	[Substrate] [nvarchar](50) NULL,
	[Threats] [nvarchar](255) NULL,
	[ThreatNotes] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[FormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageTbl]    Script Date: 11/4/2018 7:19:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageTbl](
	[ImageID] [bigint] IDENTITY(1,1) NOT NULL,
	[FormID] [bigint] NOT NULL,
	[ImageName] [nvarchar](50) NOT NULL,
	[Latitude] [decimal](10, 5) NOT NULL,
	[Longitude] [decimal](10, 5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IslandMasterTbl]    Script Date: 11/4/2018 7:19:10 AM ******/
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
/****** Object:  Table [dbo].[migrations]    Script Date: 11/4/2018 7:19:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[migration] [nvarchar](255) NOT NULL,
	[batch] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[password_resets]    Script Date: 11/4/2018 7:19:10 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[password_resets](
	[email] [nvarchar](255) NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[created_at] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlantMasterTbl]    Script Date: 11/4/2018 7:19:10 AM ******/
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
/****** Object:  Table [dbo].[UserTbl]    Script Date: 11/4/2018 7:19:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTbl](
	[UID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](255) NOT NULL,
	[Password] [nvarchar](255) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [password_resets_email_index]    Script Date: 11/4/2018 7:19:11 AM ******/
CREATE NONCLUSTERED INDEX [password_resets_email_index] ON [dbo].[password_resets]
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[FindForm_Filter]    Script Date: 11/4/2018 7:19:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Nishiguchi
-- Create date: 11/3/2018
-- Description:	Using filters, gets basic information from a form to display on the main page
-- =============================================
CREATE PROCEDURE [dbo].[FindForm_Filter]
@FilterIsland int,
@FilterAge nvarchar(50),
@FilterPlant nvarchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT ft.FormID, ft.PlantTaxaName, PlantType, pmt.PlantCommonName, pmt.PlantFedStatus, ft.LocationNotes
	FROM FormTbl ft
	INNER JOIN PlantMasterTbl pmt
	ON
		pmt.PlantTaxaName = ft.PlantTaxaName
	WHERE
		(@FilterPlant = '' OR pmt.PlantTaxaName = @FilterPlant OR pmt.PlantCommonName = @FilterPlant) AND
		(@FilterAge = 'any' OR ft.Age = @FilterAge) AND
		(@FilterIsland = -1 OR ft.IslandID = @FilterIsland)
END
GO
/****** Object:  StoredProcedure [dbo].[GetImageFromForm]    Script Date: 11/4/2018 7:19:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Joshua Nishiguchi
-- Create date: 11/3/2018
-- Description:	Retrieves images from form
-- =============================================
CREATE PROCEDURE [dbo].[GetImageFromForm]
	@FormID bigint
AS
BEGIN
	SET NOCOUNT ON;

    SELECT ImageName, Latitude, Longitude
	FROM ImageTbl
	WHERE
		FormID = @FormID
END
GO
USE [master]
GO
ALTER DATABASE [KumuApp] SET  READ_WRITE 
GO
