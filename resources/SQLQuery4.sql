USE [master]
GO
/****** Object:  Database [UYY_DB]    Script Date: 2021/2/4 下午 08:58:57 ******/
CREATE DATABASE [UYY_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UYY_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\UYY_DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UYY_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\UYY_DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [UYY_DB] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UYY_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [UYY_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [UYY_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [UYY_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [UYY_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [UYY_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [UYY_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [UYY_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [UYY_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [UYY_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [UYY_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [UYY_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [UYY_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [UYY_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [UYY_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [UYY_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [UYY_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [UYY_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [UYY_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [UYY_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [UYY_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [UYY_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [UYY_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [UYY_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [UYY_DB] SET  MULTI_USER 
GO
ALTER DATABASE [UYY_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [UYY_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [UYY_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [UYY_DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [UYY_DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [UYY_DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'UYY_DB', N'ON'
GO
ALTER DATABASE [UYY_DB] SET QUERY_STORE = OFF
GO
USE [UYY_DB]
GO
/****** Object:  Table [dbo].[appointment]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appointment](
	[appointmentPkId] [int] IDENTITY(1,1) NOT NULL,
	[memberPkId] [int] NULL,
	[clinicPkId] [int] NOT NULL,
	[dentistPkId] [int] NOT NULL,
	[patientName] [nvarchar](20) NULL,
	[patientIdNumber] [nvarchar](10) NULL,
	[patientPhone] [nvarchar](15) NULL,
	[appointDate] [date] NOT NULL,
	[timeTablePkId] [int] NOT NULL,
	[itemPkId] [int] NOT NULL,
	[memberReply] [nvarchar](15) NULL,
	[arrive] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[appointmentPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[city]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[city](
	[cityPkId] [int] IDENTITY(1,1) NOT NULL,
	[cityName] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cityPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clinic]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clinic](
	[clinicPkId] [int] IDENTITY(1,1) NOT NULL,
	[clinicAccount] [nvarchar](30) NOT NULL,
	[clinicPwd] [nvarchar](30) NOT NULL,
	[clinicName] [nvarchar](50) NOT NULL,
	[clinicPhone] [nvarchar](15) NOT NULL,
	[clinicCity] [int] NULL,
	[clinicDist] [int] NULL,
	[clinicAddress] [nvarchar](200) NOT NULL,
	[clinicLocation] [nvarchar](500) NULL,
	[clinicImage] [nvarchar](200) NULL,
	[clinicStartTime] [date] NULL,
	[clinicEndTime] [date] NULL,
	[clinicStatus] [nvarchar](20) NULL,
 CONSTRAINT [PK__clinic__9C11BAE0C905C041] PRIMARY KEY CLUSTERED 
(
	[clinicPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[commentPkId] [int] IDENTITY(1,1) NOT NULL,
	[appointmentPkId] [int] NOT NULL,
	[rate] [smallint] NOT NULL,
	[commentContext] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[commentPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[coupon]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[coupon](
	[couponPkId] [int] IDENTITY(1,1) NOT NULL,
	[couponName] [nvarchar](20) NOT NULL,
	[couponContext] [numeric](3, 2) NOT NULL,
	[couponCode] [nvarchar](20) NOT NULL,
	[couponStartTime] [date] NOT NULL,
	[couponEndTime] [date] NOT NULL,
	[couponStatus] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK__coupon__8F69D88778985F74] PRIMARY KEY CLUSTERED 
(
	[couponPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dentist]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dentist](
	[clinicPkId] [int] NOT NULL,
	[dentistPkId] [int] IDENTITY(1,1) NOT NULL,
	[dentistName] [nvarchar](30) NOT NULL,
	[dentistImage] [nvarchar](max) NOT NULL,
	[dentistGender] [nvarchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[dentistPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dentistItem]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dentistItem](
	[dentistPkId] [int] NOT NULL,
	[itemPkId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dentistTime]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dentistTime](
	[dentistPkId] [int] NOT NULL,
	[timeTablePkId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dist]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dist](
	[distPkId] [int] IDENTITY(1,1) NOT NULL,
	[cityPkId] [int] NOT NULL,
	[distName] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[distPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[items]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[items](
	[itemPkId] [int] IDENTITY(1,1) NOT NULL,
	[itemName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[itemPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[member]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member](
	[memberPkId] [int] IDENTITY(1,1) NOT NULL,
	[memberAccount] [nvarchar](50) NOT NULL,
	[memberPwd] [nvarchar](30) NOT NULL,
	[memberIdNumber] [nvarchar](15) NOT NULL,
	[memberName] [nvarchar](30) NOT NULL,
	[memberAddress] [nvarchar](200) NOT NULL,
	[memberPhone] [nvarchar](15) NOT NULL,
	[memberStatus] [nvarchar](20) NOT NULL,
	[memberLineId] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[memberPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[memberDetails]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[memberDetails](
	[memberPkId] [int] NOT NULL,
	[emergencyContact] [nvarchar](30) NOT NULL,
	[emergencyNumber] [nvarchar](15) NOT NULL,
	[emergencyRelationship] [nvarchar](10) NOT NULL,
	[smoke] [nvarchar](5) NOT NULL,
	[betelNut] [nvarchar](5) NOT NULL,
	[diseases] [nvarchar](100) NOT NULL,
	[allergy] [nvarchar](30) NOT NULL,
	[surgery] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orderDetails]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orderDetails](
	[orderDetailPkId] [int] IDENTITY(1,1) NOT NULL,
	[orderPkId] [int] NULL,
	[productPkId] [int] NULL,
	[orderQuantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[orderDetailPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[orderPkId] [int] IDENTITY(1,1) NOT NULL,
	[memberPkId] [int] NULL,
	[couponPkId] [int] NULL,
	[totalPayment] [int] NULL,
	[orderStatus] [nvarchar](30) NOT NULL,
	[shipAddress] [nvarchar](max) NOT NULL,
	[mobilephone] [varchar](255) NULL,
	[receiver] [varchar](255) NULL,
	[orderDate] [datetime2](7) NULL,
	[orderNo] [varchar](255) NULL,
	[returnReason] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[orderPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[products]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[products](
	[productPkId] [int] IDENTITY(1,1) NOT NULL,
	[productName] [nvarchar](50) NOT NULL,
	[productUpdateDate] [date] NOT NULL,
	[productPrice] [int] NOT NULL,
	[productQuantity] [int] NOT NULL,
	[productStatus] [nvarchar](10) NOT NULL,
	[productImage] [nvarchar](max) NOT NULL,
	[productCategory] [nvarchar](20) NOT NULL,
	[productProfile] [nvarchar](max) NOT NULL,
	[productSpec] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[productPkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[timeTable]    Script Date: 2021/2/4 下午 08:58:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timeTable](
	[timeTablePkId] [int] IDENTITY(1,1) NOT NULL,
	[weekdays] [nvarchar](10) NULL,
	[times] [nvarchar](20) NULL,
	[timeInterval] [nvarchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[timeTablePkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[appointment] ON 
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (2, 2, 2, 4, N'黃曉東', NULL, NULL, CAST(N'2021-01-10' AS Date), 11, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (3, 3, 2, 4, N'王欣盈', NULL, NULL, CAST(N'2021-01-11' AS Date), 30, 6, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (4, 4, 2, 4, N'陳綺貞', NULL, NULL, CAST(N'2021-01-13' AS Date), 104, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (5, 5, 2, 5, N'陳綺貞', NULL, NULL, CAST(N'2021-01-10' AS Date), 13, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (6, 6, 2, 5, N'黃曉東', NULL, NULL, CAST(N'2021-01-10' AS Date), 15, 7, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (7, 6, 2, 6, N'何姍姍', NULL, NULL, CAST(N'2021-01-12' AS Date), 77, 1, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (8, 7, 2, 7, N'何姍姍', NULL, NULL, CAST(N'2021-01-11' AS Date), 42, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (9, 7, 2, 7, N'黃曉東', NULL, NULL, CAST(N'2021-01-13' AS Date), 106, 10, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (10, 7, 2, 7, N'張淑芬', NULL, NULL, CAST(N'2021-01-20' AS Date), 101, 10, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (11, 7, 2, 7, N'黃曉東', NULL, NULL, CAST(N'2021-01-18' AS Date), 39, 10, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (17, NULL, 2, 7, N'王欣盈', N'B219928573', N'0923885123', CAST(N'2021-01-25' AS Date), 38, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (19, NULL, 2, 6, N'王欣盈', N'B219928573', N'0923885123', CAST(N'2021-01-26' AS Date), 58, 9, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (20, NULL, 2, 7, N'ZZ', N'Z', N'Z', CAST(N'2021-01-25' AS Date), 36, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (22, NULL, 2, 6, N'S', N'S', N'S', CAST(N'2021-01-26' AS Date), 75, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (23, NULL, 1, 2, N'李明奇', N'B192236212', N'0933156223', CAST(N'2021-01-25' AS Date), 36, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (24, NULL, 1, 3, N'黃曉東', N'A142216232', N'0933775123', CAST(N'2021-01-27' AS Date), 86, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (26, NULL, 2, 7, N'王欣盈', N'B219928573', N'0923885123', CAST(N'2021-02-03' AS Date), 100, 3, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (27, NULL, 2, 4, N'王欣盈', N'B219928573', N'0923885123', CAST(N'2021-01-11' AS Date), 31, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (29, 2, 2, 11, N'炭治郎', N'F123456789', N'0911111111', CAST(N'2021-01-25' AS Date), 41, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (30, NULL, 2, 4, N'假炭治郎', N'G123453789', N'0911111111', CAST(N'2021-01-26' AS Date), 70, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (31, NULL, 2, 4, N'陳綺貞', N'R299382153', N'0922317392', CAST(N'2021-01-27' AS Date), 106, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (32, NULL, 2, 6, N'李齊德', N'K134927485', N'0984221492', CAST(N'2021-02-02' AS Date), 58, 9, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (33, NULL, 2, 11, N'王欣盈', N'B219928573', N'0923885123', CAST(N'2021-02-04' AS Date), 119, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (34, NULL, 2, 5, N'陳姿琪', N'F253929385', N'0952341383', CAST(N'2021-01-26' AS Date), 70, 4, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (35, NULL, 2, 7, N'李子維', N'O182392810', N'0919382759', CAST(N'2021-02-02' AS Date), 80, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (36, NULL, 2, 7, N'何姍姍', N'R230192839', N'0932778943', CAST(N'2021-02-03' AS Date), 106, 4, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (37, NULL, 2, 11, N'蔡建成', N'G190493028', N'0932517295', CAST(N'2021-02-04' AS Date), 116, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (38, NULL, 2, 4, N'張淑芬', N'F229182274', N'0932517294', CAST(N'2021-01-31' AS Date), 7, 2, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (39, NULL, 2, 4, N'孫建生', N'R192204829', N'0921839274', CAST(N'2021-02-07' AS Date), 3, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (40, NULL, 2, 6, N'馬英七', N'T184492084', N'0982117284', CAST(N'2021-02-02' AS Date), 73, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (41, NULL, 2, 5, N'陳水木', N'Y199829331', N'0944829382', CAST(N'2021-01-31' AS Date), 15, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (42, NULL, 2, 7, N'趙飛燕', N'U209947281', N'0923859818', CAST(N'2021-02-08' AS Date), 36, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (43, NULL, 2, 11, N'小林友美', N'', N'0972116478', CAST(N'2021-02-04' AS Date), 118, 3, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (44, NULL, 2, 6, N'史艷文', N'K193285902', N'0922184728', CAST(N'2021-02-02' AS Date), 59, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (45, NULL, 2, 6, N'張淑芬', N'F229182274', N'0932517294', CAST(N'2021-02-02' AS Date), 75, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (46, NULL, 2, 6, N'張淑芬', N'F229182274', N'0932517294', CAST(N'2021-02-09' AS Date), 75, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (47, NULL, 2, 6, N'張淑芬', N'F229182274', N'0932517294', CAST(N'2021-02-16' AS Date), 75, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (48, NULL, 2, 6, N'張淑芬', N'F229182274', N'0932517294', CAST(N'2021-02-23' AS Date), 75, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (49, NULL, 1, 2, N'李明奇', N'B192236212', N'0933156223', CAST(N'2021-01-18' AS Date), 36, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (50, NULL, 1, 2, N'李明奇', N'B192236212', N'0933156223', CAST(N'2021-01-11' AS Date), 36, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (51, NULL, 1, 2, N'李明奇', N'B192236212', N'0933156223', CAST(N'2021-01-04' AS Date), 36, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (53, NULL, 1, 2, N'李明奇', N'B192236212', N'0933156223', CAST(N'2021-02-09' AS Date), 36, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (54, NULL, 1, 2, N'李明奇', N'B192236212', N'0933156223', CAST(N'2021-02-16' AS Date), 36, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (55, NULL, 1, 2, N'李明奇', N'B192236212', N'0933156223', CAST(N'2021-02-23' AS Date), 36, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (56, NULL, 2, 4, N'陳綺貞', N'R299382153', N'0922317392', CAST(N'2021-01-20' AS Date), 106, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (57, NULL, 2, 4, N'陳綺貞', N'R299382153', N'0922317392', CAST(N'2021-01-13' AS Date), 106, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (58, NULL, 2, 4, N'陳綺貞', N'R299382153', N'0922317392', CAST(N'2021-01-06' AS Date), 106, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (59, NULL, 2, 4, N'陳綺貞', N'R299382153', N'0922317392', CAST(N'2021-02-03' AS Date), 106, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (60, NULL, 2, 4, N'陳綺貞', N'R299382153', N'0922317392', CAST(N'2021-02-10' AS Date), 106, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (61, NULL, 2, 4, N'陳綺貞', N'R299382153', N'0922317392', CAST(N'2021-02-17' AS Date), 106, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (62, NULL, 2, 4, N'陳綺貞', N'R299382153', N'0922317392', CAST(N'2021-02-24' AS Date), 106, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (63, NULL, 2, 4, N'林月華', N'W298537417', N'0921582748', CAST(N'2021-02-01' AS Date), 41, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (64, NULL, 2, 7, N'章家俊', N'J194828301', N'0976758212', CAST(N'2021-02-03' AS Date), 101, 2, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (65, NULL, 2, 11, N'盧秀吉', N'I219320193', N'0913112492', CAST(N'2021-02-02' AS Date), 81, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (66, NULL, 2, 6, N'辜中錫', N'T102874821', N'0976319284', CAST(N'2021-02-05' AS Date), 157, 1, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (77, NULL, 2, 6, N'辜中錫', N'T102874821', N'0976319284', CAST(N'2021-02-12' AS Date), 157, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (78, NULL, 2, 4, N'王毅安', N'A209828193', N'0932100392', CAST(N'2021-01-27' AS Date), 102, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (79, NULL, 2, 7, N'王毅安', N'A209828193', N'0932100392', CAST(N'2021-02-15' AS Date), 36, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (80, NULL, 2, 11, N'王毅安', N'A209828193', N'0932100392', CAST(N'2021-01-26' AS Date), 78, 2, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (81, 2, 2, 11, N'炭治郎', N'F123456789', N'0911111111', CAST(N'2021-02-03' AS Date), 100, 2, N'取消', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (82, NULL, 2, 6, N'王毅安', N'A209828193', N'0932100392', CAST(N'2021-01-27' AS Date), 88, 1, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (83, NULL, 2, 4, N'王鐵軍', N'A109828123', N'0932100451', CAST(N'2021-02-14' AS Date), 8, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (84, NULL, 2, 11, N'陳家駒', N'A109823451', N'0919284923', CAST(N'2021-02-03' AS Date), 100, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (85, 2, 2, 11, N'炭治郎', N'F123456789', N'0911111111', CAST(N'2021-02-04' AS Date), 113, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (86, 3, 2, 7, N'彌豆子', N'A123456789', N'已填寫', CAST(N'2021-02-03' AS Date), 102, 3, N'未回覆', N'false')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (87, 12, 1, 1, N'蔡東儒', N'S123456789', N'0975111716', CAST(N'2021-01-31' AS Date), 1, 1, N'取消', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (89, NULL, 2, 4, N'王毅安', N'A209828193', N'0932100392', CAST(N'2021-02-14' AS Date), 7, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (90, NULL, 2, 7, N'王毅安', N'A209828193', N'0932100392', CAST(N'2021-02-08' AS Date), 39, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (91, 12, 2, 7, N'蔡東儒', N'S123456789', N'0975111716', CAST(N'2021-02-01' AS Date), 40, 2, N'確定前往', N'false')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (92, 12, 2, 6, N'蔡東儒', N'S123456789', N'0975111716', CAST(N'2021-02-02' AS Date), 63, 1, N'未回覆', N'false')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (93, 12, 2, 11, N'蔡東儒', N'S123456789', N'0975111716', CAST(N'2021-04-08' AS Date), 118, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (94, 12, 2, 6, N'蔡東儒', N'S123456789', N'0975111716', CAST(N'2021-02-02' AS Date), 64, 9, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (95, 12, 2, 6, N'蔡東儒', N'S123456789', N'0975111716', CAST(N'2021-02-04' AS Date), 128, 8, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (96, 7, 2, 4, N'王曉晴', N'E123456789', N'0966666666', CAST(N'2021-02-01' AS Date), 32, 1, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (97, 6, 2, 4, N'何啟明', N'D123456789', N'0938218492', CAST(N'2021-02-01' AS Date), 43, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (98, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-01' AS Date), 44, 7, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (99, 2, 2, 7, N'陳炭伊', N'F123456789', N'0911111111', CAST(N'2021-03-08' AS Date), 36, 2, N'取消', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (100, NULL, 2, 12, N'王毅安', N'A209828193', N'0932100392', CAST(N'2021-02-12' AS Date), 141, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (101, 2, 1, 1, N'陳炭伊', N'F123456789', N'0911111111', CAST(N'2021-01-24' AS Date), 1, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (102, 12, 2, 6, N'蔡東儒', N'S123456789', N'0975111716', CAST(N'2021-02-05' AS Date), 147, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (103, 12, 2, 11, N'蔡東儒', N'S123456789', N'0975111716', CAST(N'2021-02-06' AS Date), 186, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (104, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (105, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (106, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (107, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (108, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (109, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (110, 3, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (111, 3, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (112, 3, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (113, 3, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (114, 3, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (115, 3, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (116, 3, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (117, 3, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (118, 3, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-11' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (119, 4, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (120, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (121, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (122, 2, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (123, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (124, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (125, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (126, 5, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (128, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (130, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (131, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (132, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (133, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-15' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (134, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (135, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (136, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (137, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (138, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (139, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (140, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (141, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (142, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (143, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (144, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (145, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (146, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (147, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (148, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (149, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (150, 4, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-16' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (151, 3, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-14' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (152, 3, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-14' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (153, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-14' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (154, 2, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-14' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (155, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-14' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (156, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-14' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (157, 3, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-14' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (158, NULL, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (159, NULL, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (160, NULL, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (161, NULL, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (162, NULL, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (163, NULL, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (164, 2, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (165, 2, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (166, 2, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (167, 2, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (168, 2, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (169, 2, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 10, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (170, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 10, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (171, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (172, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (173, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (174, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (175, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (176, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (177, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (178, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (179, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (180, 3, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-17' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (181, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-18' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (182, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-18' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (183, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-18' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (184, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-18' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (185, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-18' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (186, 3, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-18' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (187, 4, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 10, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (188, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (189, NULL, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (190, 2, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (191, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (192, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (193, 3, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (194, 5, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (196, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (198, 3, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (199, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (200, 3, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (201, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-19' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (202, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (203, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (204, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (205, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (206, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (207, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (208, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (209, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (210, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (211, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (212, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (213, 2, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (214, 2, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (215, 2, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (216, 2, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (217, 2, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (218, 5, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-22' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (219, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-22' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (220, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-22' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (221, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-22' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (222, 5, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-22' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (223, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-22' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (224, 4, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-22' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (225, 6, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-22' AS Date), 44, 3, N'取消', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (226, 2, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-23' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (227, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-23' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (228, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-23' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (229, 3, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-23' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (230, 5, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-23' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (232, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-23' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (234, 3, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-23' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (235, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-23' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (236, 3, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-23' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (237, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-23' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (238, 3, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 10, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (239, 3, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 10, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (240, 4, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (241, 2, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (242, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (243, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (244, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (245, 5, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (246, NULL, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (247, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (248, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (249, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (250, NULL, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (251, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (252, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (253, 4, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (254, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (255, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (256, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (257, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (258, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (259, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (260, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (261, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (262, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (263, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (264, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (265, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (266, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (267, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (268, 3, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (269, 3, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (270, 3, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (271, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (272, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-26' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (273, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-26' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (274, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-26' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (275, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-26' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (276, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-26' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (277, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-26' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (278, 29, 2, 4, N'', N'A185809900', N'', CAST(N'2021-02-03' AS Date), 99, 2, N'確定前往', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (279, 19, 2, 4, N'', N'A228028833', N'', CAST(N'2021-02-03' AS Date), 111, 9, N'未回覆', N'false')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (280, NULL, 2, 12, N'王毅安', N'A209828193', N'0932100392', CAST(N'2021-02-12' AS Date), 142, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (281, 6, 2, 6, N'柳家儀', N'D123456789', N'0955555555', CAST(N'2021-02-25' AS Date), 113, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (282, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (283, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (284, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (285, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (286, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (287, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (288, 3, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (289, 4, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (290, 3, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (291, 6, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (292, 3, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (293, 5, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (294, 2, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (295, 4, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (296, 3, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-01' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (297, 4, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (298, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (299, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (300, 2, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (301, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (302, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (303, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (304, 5, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (306, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (308, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (309, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (310, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (311, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-04' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (312, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (313, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (314, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (315, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (316, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (317, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (318, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (319, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (320, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (321, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (322, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (323, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (324, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (325, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (326, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (327, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (328, 4, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-03' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (329, 38, 2, 12, N'', N'A243900333', N'', CAST(N'2021-02-05' AS Date), 143, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (330, 34, 2, 11, N'', N'A254423310', N'', CAST(N'2021-02-03' AS Date), 102, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (331, 35, 2, 7, N'', N'A238869389', N'', CAST(N'2021-02-08' AS Date), 40, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (332, NULL, 2, 11, N'王毅安', N'A209828193', N'0932100392', CAST(N'2021-02-05' AS Date), 144, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (333, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-12' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (334, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-12' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (335, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-12' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (336, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-12' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (337, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-12' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (338, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-12' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (339, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-05' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (340, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-05' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (341, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-05' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (342, 2, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-05' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (343, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-05' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (344, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-05' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (345, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-05' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (346, 2, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-07' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (347, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-07' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (348, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-07' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (349, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-07' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (350, 5, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-07' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (351, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-07' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (352, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-07' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (353, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-07' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (354, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-07' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (355, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-07' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (356, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-07' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (357, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-07' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (358, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (359, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (360, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (361, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (362, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (363, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (364, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (365, 2, 2, 11, N'王倚菲', N'A222829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (366, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (367, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (368, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (369, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 10, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (370, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 10, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (371, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (372, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (373, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (374, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (375, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (376, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (377, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (378, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (379, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (380, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-08' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (381, 4, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 10, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (382, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (383, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (384, 2, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (385, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (386, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (387, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (388, 5, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (390, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (392, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (393, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (394, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (395, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-22' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (396, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-10' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (397, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-10' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (398, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-10' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (399, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-10' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (400, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-10' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (401, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-10' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (402, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (403, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (404, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (405, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (406, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (407, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (408, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (409, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (410, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (411, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (412, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (413, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (414, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (415, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (416, 2, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (417, 2, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-11' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (418, 5, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-12' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (419, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-12' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (420, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-12' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (421, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-12' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (422, 5, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-12' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (423, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-12' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (424, 4, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-12' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (425, 6, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-12' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (426, 2, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-14' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (427, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-14' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (428, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-14' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (429, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-14' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (430, 5, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-14' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (431, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-14' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (432, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-14' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (433, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-14' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (434, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-14' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (435, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-14' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (436, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-14' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (437, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-14' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (438, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 10, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (439, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 10, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (440, 4, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (441, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (442, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (443, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (444, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (445, 5, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (446, NULL, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (447, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (448, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (449, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (450, NULL, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (451, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (452, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (453, 4, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (454, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (455, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (456, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-15' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (457, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (458, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (459, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (460, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (461, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (462, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (463, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (464, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (465, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (466, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (467, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (468, 3, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (469, 3, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (470, 3, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (471, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-25' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (472, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (473, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (474, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (475, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (476, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (477, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (478, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (479, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (480, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (481, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (482, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (483, 3, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (484, 3, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (485, 3, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (486, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (487, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (488, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-17' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (489, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (490, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (491, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (492, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (493, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (494, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (495, 5, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-21' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (496, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (497, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (498, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (499, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (500, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (501, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (502, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (503, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (504, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (505, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (506, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (507, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (508, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (509, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (510, 2, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (511, 2, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-18' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (512, 4, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 10, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (513, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (514, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (515, 2, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (516, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (517, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (518, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (519, 5, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (521, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (523, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (524, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (525, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (526, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (527, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (528, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-19' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (529, 4, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (530, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (531, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (532, 2, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (533, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (534, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (535, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (536, 5, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (537, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (538, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (539, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (540, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (541, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (542, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (543, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-06' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (544, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (545, NULL, 2, 5, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (546, NULL, 2, 6, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (547, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (548, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (549, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (550, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (551, 4, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (552, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (553, 6, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (554, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (555, 5, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (556, 2, 2, 12, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (557, 4, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (558, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-24' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (559, 4, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (560, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (561, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (562, 2, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (563, NULL, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (564, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (565, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (566, 5, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (567, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (568, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (569, NULL, 2, 4, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (570, NULL, 2, 7, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (571, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 5, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (572, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (573, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-26' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (574, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (575, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (576, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (577, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (578, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (579, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (580, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (581, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (582, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (583, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (584, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (585, 3, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (586, 3, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (587, 3, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (588, 3, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (589, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (590, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-27' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (591, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (592, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (593, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (594, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (595, 3, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (596, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (597, NULL, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (598, 3, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (599, NULL, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (600, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 8, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (601, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (602, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (603, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (604, 2, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (605, 2, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (606, 2, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-28' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (607, 4, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 10, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (608, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (609, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (610, 2, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (611, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (612, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (613, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (614, 5, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (616, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (618, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 4, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (619, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (620, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (621, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (622, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (623, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-29' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (624, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-31' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (625, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-31' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (626, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-31' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (627, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-31' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (628, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-31' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (629, 3, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-31' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (630, 5, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-01-31' AS Date), 44, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (631, 19, 2, 11, N'', N'A228028833', N'', CAST(N'2021-02-04' AS Date), 117, 2, N'未回覆', N'false')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (632, 19, 2, 12, N'', N'A228028833', N'', CAST(N'2021-02-05' AS Date), 147, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (633, 5, 2, 11, N'王倚菲', N'A102829193', N'0932129392', CAST(N'2021-02-09' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (634, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-09' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (635, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-09' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (637, 5, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-09' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (638, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-09' AS Date), 44, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (639, 4, 2, 4, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-09' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (640, 6, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-09' AS Date), 44, 3, N'取消', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (641, 2, 2, 5, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-10' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (642, NULL, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-10' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (643, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-10' AS Date), 44, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (644, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-10' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (645, 5, 2, 11, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-10' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (646, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-10' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (647, NULL, 2, 6, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-10' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (648, NULL, 2, 12, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-10' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (649, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-10' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (650, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-10' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (651, 3, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-10' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (652, NULL, 2, 7, N'王倚菲', N'A202829193', N'0932129392', CAST(N'2021-02-10' AS Date), 44, 3, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (653, 23, 2, 4, N'', N'G291292012', N'', CAST(N'2021-02-07' AS Date), 11, 6, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (654, 26, 2, 5, N'', N'A161486674', N'', CAST(N'2021-02-04' AS Date), 130, 7, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (655, 26, 2, 6, N'', N'A161486674', N'', CAST(N'2021-02-05' AS Date), 142, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (656, NULL, 2, 6, N'李永辛', N'A145260492', N'0910873746', CAST(N'2021-02-05' AS Date), 146, 9, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (658, 6, 2, 6, N'柳家儀', N'D123456789', N'0955555555', CAST(N'2021-02-25' AS Date), 113, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (659, NULL, 2, 12, N'王毅安', N'A209828193', N'0932100392', CAST(N'2021-02-05' AS Date), 142, 2, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (660, 32, 2, 11, N'鄭婉婷', N'A255981848', N'0932611888', CAST(N'2021-02-25' AS Date), 113, 1, N'取消', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (661, 32, 2, 11, N'鄭婉婷', N'A255981848', N'0932611888', CAST(N'2021-02-25' AS Date), 113, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (662, 32, 2, 11, N'鄭婉婷', N'A255981848', N'0932611888', CAST(N'2021-02-25' AS Date), 113, 1, N'未回覆', N'true')
GO
INSERT [dbo].[appointment] ([appointmentPkId], [memberPkId], [clinicPkId], [dentistPkId], [patientName], [patientIdNumber], [patientPhone], [appointDate], [timeTablePkId], [itemPkId], [memberReply], [arrive]) VALUES (663, 6, 2, 4, N'柳家儀', N'D123456789', N'0955555555', CAST(N'2021-02-21' AS Date), 1, 1, N'未回覆', N'true')
GO
SET IDENTITY_INSERT [dbo].[appointment] OFF
GO
SET IDENTITY_INSERT [dbo].[city] ON 
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (1, N'臺北市')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (2, N'新北市')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (3, N'桃園市')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (4, N'臺中市')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (5, N'臺南市')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (6, N'高雄市')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (7, N'宜蘭縣')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (8, N'新竹縣')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (9, N'苗栗縣')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (10, N'彰化縣')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (11, N'南投縣')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (12, N'雲林縣')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (13, N'嘉義市')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (14, N'嘉義縣')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (15, N'屏東縣')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (16, N'臺東縣')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (17, N'花蓮縣')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (18, N'澎湖縣')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (19, N'基隆市')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (20, N'新竹市')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (21, N'金門縣')
GO
INSERT [dbo].[city] ([cityPkId], [cityName]) VALUES (22, N'連江縣')
GO
SET IDENTITY_INSERT [dbo].[city] OFF
GO
SET IDENTITY_INSERT [dbo].[clinic] ON 
GO
INSERT [dbo].[clinic] ([clinicPkId], [clinicAccount], [clinicPwd], [clinicName], [clinicPhone], [clinicCity], [clinicDist], [clinicAddress], [clinicLocation], [clinicImage], [clinicStartTime], [clinicEndTime], [clinicStatus]) VALUES (1, N'Shinra@hotmail.com.tw', N'P@ssw0rd456', N'美德牙醫診所', N'02-22392983', 1, 1, N'延吉街109號', NULL, N'defaultImage', CAST(N'2021-01-01' AS Date), CAST(N'2021-12-31' AS Date), N'已開通')
GO
INSERT [dbo].[clinic] ([clinicPkId], [clinicAccount], [clinicPwd], [clinicName], [clinicPhone], [clinicCity], [clinicDist], [clinicAddress], [clinicLocation], [clinicImage], [clinicStartTime], [clinicEndTime], [clinicStatus]) VALUES (2, N'Yorozuya@hotmail.com.tw', N'P@ssw0rd456', N'優氏牙醫診所', N'02-22392983', 1, 5, N'和平東路二段106號', NULL, N'https://i.imgur.com/dKIXBx5.jpg', CAST(N'2021-01-01' AS Date), CAST(N'2021-12-31' AS Date), N'已開通')
GO
INSERT [dbo].[clinic] ([clinicPkId], [clinicAccount], [clinicPwd], [clinicName], [clinicPhone], [clinicCity], [clinicDist], [clinicAddress], [clinicLocation], [clinicImage], [clinicStartTime], [clinicEndTime], [clinicStatus]) VALUES (3, N'Konoha@hotmail.com.tw', N'P@ssw0rd456', N'多倫多牙醫診所', N'02-22392983', 3, 20, N'三信路166號', NULL, N'defaultImage', CAST(N'2021-02-01' AS Date), CAST(N'2022-02-01' AS Date), N'已開通')
GO
INSERT [dbo].[clinic] ([clinicPkId], [clinicAccount], [clinicPwd], [clinicName], [clinicPhone], [clinicCity], [clinicDist], [clinicAddress], [clinicLocation], [clinicImage], [clinicStartTime], [clinicEndTime], [clinicStatus]) VALUES (9, N'112233a@gmail.comwww', N'qq11!!!', N'躍誠牙醫診所', N'02-25794491', 15, 297, N'中山路119號', NULL, N'defaultImage', CAST(N'2021-02-01' AS Date), CAST(N'2022-02-01' AS Date), N'已開通')
GO
INSERT [dbo].[clinic] ([clinicPkId], [clinicAccount], [clinicPwd], [clinicName], [clinicPhone], [clinicCity], [clinicDist], [clinicAddress], [clinicLocation], [clinicImage], [clinicStartTime], [clinicEndTime], [clinicStatus]) VALUES (10, N'g12fssd@gmail.comddd', N'qq11!!!', N'宏昌牙醫診所', N'02-25794491', 17, 341, N'誠美街220號', NULL, N'defaultImage', CAST(N'2021-02-01' AS Date), CAST(N'2022-02-01' AS Date), N'已開通')
GO
INSERT [dbo].[clinic] ([clinicPkId], [clinicAccount], [clinicPwd], [clinicName], [clinicPhone], [clinicCity], [clinicDist], [clinicAddress], [clinicLocation], [clinicImage], [clinicStartTime], [clinicEndTime], [clinicStatus]) VALUES (11, N'dveas@gmail.comdddd', N'qq11!!!', N'誠品牙醫診所', N'02-25794491', 1, 7, N'永美街2巷50號', NULL, N'defaultImage', CAST(N'2021-02-01' AS Date), CAST(N'2022-02-01' AS Date), N'已開通')
GO
INSERT [dbo].[clinic] ([clinicPkId], [clinicAccount], [clinicPwd], [clinicName], [clinicPhone], [clinicCity], [clinicDist], [clinicAddress], [clinicLocation], [clinicImage], [clinicStartTime], [clinicEndTime], [clinicStatus]) VALUES (12, N'vberrf1@htrdhe.com', N'qq11!!!', N'品美牙醫診所', N'02-25794491', 2, 13, N'天臨路140號', NULL, N'defaultImage', CAST(N'2021-02-01' AS Date), CAST(N'2022-02-01' AS Date), N'已開通')
GO
INSERT [dbo].[clinic] ([clinicPkId], [clinicAccount], [clinicPwd], [clinicName], [clinicPhone], [clinicCity], [clinicDist], [clinicAddress], [clinicLocation], [clinicImage], [clinicStartTime], [clinicEndTime], [clinicStatus]) VALUES (13, N'v3wwdd@gmail.comffff', N'qq11!!!', N'美信牙醫診所', N'02-25794491', 2, 15, N'延吉街49號', NULL, N'https://i.imgur.com/Fb4jKxk.jpg', CAST(N'2021-02-01' AS Date), CAST(N'2022-02-01' AS Date), N'已開通')
GO
INSERT [dbo].[clinic] ([clinicPkId], [clinicAccount], [clinicPwd], [clinicName], [clinicPhone], [clinicCity], [clinicDist], [clinicAddress], [clinicLocation], [clinicImage], [clinicStartTime], [clinicEndTime], [clinicStatus]) VALUES (14, N'asdvr@gmail.com', N'qq11!!!', N'德美牙醫診所', N'02-25794491', 18, 343, N'承德路59號', NULL, N'https://i.imgur.com/iuFaD2l.jpg', CAST(N'2021-02-01' AS Date), CAST(N'2022-02-01' AS Date), N'已開通')
GO
INSERT [dbo].[clinic] ([clinicPkId], [clinicAccount], [clinicPwd], [clinicName], [clinicPhone], [clinicCity], [clinicDist], [clinicAddress], [clinicLocation], [clinicImage], [clinicStartTime], [clinicEndTime], [clinicStatus]) VALUES (19, N'vw234d@gmail.com', N'qq11!!!', N'星展牙醫診所', N'07-6662222', 6, 130, N'永美街156號', NULL, N'https://i.imgur.com/0mJKeIi.jpg', CAST(N'2021-02-02' AS Date), CAST(N'2022-02-01' AS Date), N'已開通')
GO
INSERT [dbo].[clinic] ([clinicPkId], [clinicAccount], [clinicPwd], [clinicName], [clinicPhone], [clinicCity], [clinicDist], [clinicAddress], [clinicLocation], [clinicImage], [clinicStartTime], [clinicEndTime], [clinicStatus]) VALUES (23, N'tihtom@gmail.com', N'qq11!!!', N'宏昌牙醫診所', N'02-25794491', 9, 184, N'延吉街49號', NULL, N'https://i.imgur.com/wAJlGTk.jpg', CAST(N'2021-02-04' AS Date), CAST(N'2022-02-04' AS Date), N'已開通')
GO
SET IDENTITY_INSERT [dbo].[clinic] OFF
GO
SET IDENTITY_INSERT [dbo].[coupon] ON 
GO
INSERT [dbo].[coupon] ([couponPkId], [couponName], [couponContext], [couponCode], [couponStartTime], [couponEndTime], [couponStatus]) VALUES (1, N'周年慶全面8折', CAST(0.80 AS Numeric(3, 2)), N'qwer1234', CAST(N'2021-01-17' AS Date), CAST(N'2021-02-26' AS Date), N'true')
GO
INSERT [dbo].[coupon] ([couponPkId], [couponName], [couponContext], [couponCode], [couponStartTime], [couponEndTime], [couponStatus]) VALUES (2, N'倒店大折扣', CAST(0.10 AS Numeric(3, 2)), N'oooooo', CAST(N'2021-01-01' AS Date), CAST(N'2021-02-04' AS Date), N'false')
GO
INSERT [dbo].[coupon] ([couponPkId], [couponName], [couponContext], [couponCode], [couponStartTime], [couponEndTime], [couponStatus]) VALUES (6, N'畢業生快樂', CAST(0.90 AS Numeric(3, 2)), N'iiiedu', CAST(N'2021-02-05' AS Date), CAST(N'2021-02-06' AS Date), N'true')
GO
INSERT [dbo].[coupon] ([couponPkId], [couponName], [couponContext], [couponCode], [couponStartTime], [couponEndTime], [couponStatus]) VALUES (7, N'情人節快樂', CAST(0.75 AS Numeric(3, 2)), N'Loveuuuu', CAST(N'2021-02-10' AS Date), CAST(N'2021-02-16' AS Date), N'false')
GO
INSERT [dbo].[coupon] ([couponPkId], [couponName], [couponContext], [couponCode], [couponStartTime], [couponEndTime], [couponStatus]) VALUES (8, N'雙22特賣', CAST(0.70 AS Numeric(3, 2)), N'222222', CAST(N'2021-02-02' AS Date), CAST(N'2021-02-22' AS Date), N'true')
GO
INSERT [dbo].[coupon] ([couponPkId], [couponName], [couponContext], [couponCode], [couponStartTime], [couponEndTime], [couponStatus]) VALUES (9, N'新春大禮包全館打8折', CAST(0.80 AS Numeric(3, 2)), N'happyNewYear2021', CAST(N'2021-02-10' AS Date), CAST(N'2021-02-17' AS Date), N'true')
GO
SET IDENTITY_INSERT [dbo].[coupon] OFF
GO
SET IDENTITY_INSERT [dbo].[dentist] ON 
GO
INSERT [dbo].[dentist] ([clinicPkId], [dentistPkId], [dentistName], [dentistImage], [dentistGender]) VALUES (1, 1, N'李天成', N'???', N'男')
GO
INSERT [dbo].[dentist] ([clinicPkId], [dentistPkId], [dentistName], [dentistImage], [dentistGender]) VALUES (1, 2, N'黃和虎', N'男生照片', N'男')
GO
INSERT [dbo].[dentist] ([clinicPkId], [dentistPkId], [dentistName], [dentistImage], [dentistGender]) VALUES (1, 3, N'陳韻竹', N'女生照片', N'女')
GO
INSERT [dbo].[dentist] ([clinicPkId], [dentistPkId], [dentistName], [dentistImage], [dentistGender]) VALUES (2, 4, N'石建頤', N'男生照片', N'男')
GO
INSERT [dbo].[dentist] ([clinicPkId], [dentistPkId], [dentistName], [dentistImage], [dentistGender]) VALUES (2, 5, N'張海珊', N'女生照片', N'女')
GO
INSERT [dbo].[dentist] ([clinicPkId], [dentistPkId], [dentistName], [dentistImage], [dentistGender]) VALUES (2, 6, N'莊斯齊', N'男生照片', N'男')
GO
INSERT [dbo].[dentist] ([clinicPkId], [dentistPkId], [dentistName], [dentistImage], [dentistGender]) VALUES (2, 7, N'白欣宜', N'女生照片', N'女')
GO
INSERT [dbo].[dentist] ([clinicPkId], [dentistPkId], [dentistName], [dentistImage], [dentistGender]) VALUES (2, 11, N'陳鴻文', N'男生照片', N'男')
GO
INSERT [dbo].[dentist] ([clinicPkId], [dentistPkId], [dentistName], [dentistImage], [dentistGender]) VALUES (2, 12, N'詹子晴', N'女生照片', N'女')
GO
INSERT [dbo].[dentist] ([clinicPkId], [dentistPkId], [dentistName], [dentistImage], [dentistGender]) VALUES (23, 18, N'詹子晴', N'https://imgur.com/XPUb9rP', N'女')
GO
SET IDENTITY_INSERT [dbo].[dentist] OFF
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (1, 1)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (1, 3)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (1, 8)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (2, 5)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (2, 7)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (3, 8)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (4, 1)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (4, 2)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (4, 5)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (4, 6)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (4, 9)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (18, 1)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (18, 2)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (18, 3)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (6, 1)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (6, 8)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (6, 9)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (12, 2)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (5, 3)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (5, 4)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (5, 7)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (7, 2)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (7, 3)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (7, 4)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (7, 10)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (11, 1)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (11, 2)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (11, 3)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (11, 4)
GO
INSERT [dbo].[dentistItem] ([dentistPkId], [itemPkId]) VALUES (11, 5)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 1)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 2)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 3)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 4)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 5)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 6)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 7)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 8)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 28)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 29)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 30)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 31)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 32)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 33)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 34)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (1, 35)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (2, 36)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (2, 37)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (2, 38)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (2, 39)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (2, 40)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (2, 41)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (3, 80)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (3, 81)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (3, 82)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (3, 83)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (3, 84)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (3, 85)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (3, 86)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 1)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 29)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 2)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 30)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 3)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 31)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 4)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 32)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 5)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 6)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 7)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 8)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 10)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 11)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 12)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 13)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 41)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 97)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 29)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 57)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 85)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 113)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 141)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 30)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 57)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 85)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 113)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 141)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 58)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 86)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 114)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 142)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 59)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 87)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 115)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 58)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 86)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 114)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 142)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 31)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 59)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 87)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 115)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 143)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 32)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 60)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 88)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 116)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 144)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 33)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 61)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 89)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 117)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 145)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 34)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 62)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 90)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 118)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 146)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 35)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 63)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 91)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 119)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 125)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 14)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 42)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 70)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 98)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 126)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 15)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 43)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 71)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 99)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 127)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 16)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 44)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 72)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 100)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 128)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 17)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 45)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 101)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 129)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 18)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 46)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 102)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 130)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 106)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 134)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 107)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 135)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 108)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 136)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 109)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 137)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 110)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 138)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 27)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 111)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 139)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 28)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 112)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (4, 140)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 147)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 36)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 64)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 92)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 120)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (18, 148)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 143)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 60)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 88)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 116)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 144)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 61)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 89)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 117)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 145)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 62)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 90)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 118)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 146)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 63)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 91)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 119)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 147)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 64)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 92)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 120)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 148)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 69)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 97)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 125)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 153)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 70)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 98)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 126)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 154)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 71)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 99)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 127)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 155)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 72)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 100)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 128)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 156)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 73)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 101)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 129)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 157)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 74)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 102)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 130)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (6, 158)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (12, 141)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (12, 142)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (12, 143)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (12, 144)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (12, 145)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (12, 146)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (12, 147)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (12, 148)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 13)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 41)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 69)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 97)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 125)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 14)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 42)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 70)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 98)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 126)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 15)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 43)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 71)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 99)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 127)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 16)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 44)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 72)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 100)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 128)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 17)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 45)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 73)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 101)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 129)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 18)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 46)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 74)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 102)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (5, 130)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 36)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 37)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 38)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 39)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 40)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 41)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 42)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 43)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 100)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 101)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 102)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 103)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 104)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 105)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 78)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 106)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 162)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 79)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 163)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 80)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 164)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 81)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 165)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 82)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 166)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 83)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 167)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 84)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (7, 168)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 29)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 57)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 85)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 113)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 141)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 169)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 30)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 58)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 86)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 114)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 142)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 170)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 31)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 59)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 87)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 115)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 143)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 171)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 32)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 60)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 88)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 116)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 144)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 172)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 33)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 61)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 89)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 117)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 145)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 173)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 34)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 62)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 90)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 118)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 146)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 174)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 35)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 63)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 91)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 119)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 147)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 175)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 36)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 64)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 92)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 120)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 148)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 176)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 41)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 97)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 181)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 42)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 98)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 182)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 43)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 99)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 183)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 44)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 100)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 184)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 45)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 101)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 185)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 46)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 102)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 186)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 78)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 106)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 79)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 107)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 80)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 108)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 81)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 109)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 82)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 110)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 83)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 111)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 84)
GO
INSERT [dbo].[dentistTime] ([dentistPkId], [timeTablePkId]) VALUES (11, 112)
GO
SET IDENTITY_INSERT [dbo].[dist] ON 
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (1, 1, N'中正區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (2, 1, N'大同區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (3, 1, N'中山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (4, 1, N'松山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (5, 1, N'大安區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (6, 1, N'萬華區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (7, 1, N'信義區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (8, 1, N'士林區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (9, 1, N'北投區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (10, 1, N'內湖區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (11, 1, N'南港區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (12, 1, N'文山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (13, 2, N'板橋區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (14, 2, N'新莊區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (15, 2, N'中和區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (16, 2, N'永和區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (17, 2, N'土城區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (18, 2, N'樹林區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (19, 2, N'三峽區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (20, 2, N'鶯歌區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (21, 2, N'三重區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (22, 2, N'蘆洲區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (23, 2, N'五股區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (24, 2, N'泰山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (25, 2, N'林口區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (26, 2, N'八里區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (27, 2, N'淡水區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (28, 2, N'三芝區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (29, 2, N'石門區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (30, 2, N'金山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (31, 2, N'萬里區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (32, 2, N'汐止區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (33, 2, N'瑞芳區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (34, 2, N'貢寮區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (35, 2, N'平溪區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (36, 2, N'雙溪區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (37, 2, N'新店區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (38, 2, N'深坑區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (39, 2, N'石碇區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (40, 2, N'坪林區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (41, 2, N'烏來區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (42, 3, N'桃園區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (43, 3, N'中壢區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (44, 3, N'平鎮區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (45, 3, N'八德區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (46, 3, N'楊梅區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (47, 3, N'蘆竹區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (48, 3, N'大溪區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (49, 3, N'龍潭區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (50, 3, N'龜山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (51, 3, N'大園區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (52, 3, N'觀音區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (53, 3, N'新屋區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (54, 3, N'復興區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (55, 4, N'中區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (56, 4, N'東區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (57, 4, N'南區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (58, 4, N'西區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (59, 4, N'北區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (60, 4, N'北屯區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (61, 4, N'西屯區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (62, 4, N'南屯區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (63, 4, N'太平區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (64, 4, N'大里區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (65, 4, N'霧峰區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (66, 4, N'烏日區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (67, 4, N'豐原區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (68, 4, N'后里區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (69, 4, N'石岡區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (70, 4, N'東勢區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (71, 4, N'新社區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (72, 4, N'潭子區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (73, 4, N'大雅區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (74, 4, N'神岡區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (75, 4, N'大肚區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (76, 4, N'沙鹿區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (77, 4, N'龍井區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (78, 4, N'梧棲區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (79, 4, N'清水區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (80, 4, N'大甲區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (81, 4, N'外埔區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (82, 4, N'大安區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (83, 4, N'和平區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (84, 5, N'中西區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (85, 5, N'東區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (86, 5, N'南區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (87, 5, N'北區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (88, 5, N'安平區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (89, 5, N'安南區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (90, 5, N'永康區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (91, 5, N'歸仁區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (92, 5, N'新化區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (93, 5, N'左鎮區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (94, 5, N'玉井區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (95, 5, N'楠西區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (96, 5, N'南化區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (97, 5, N'仁德區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (98, 5, N'關廟區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (99, 5, N'龍崎區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (100, 5, N'官田區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (101, 5, N'麻豆區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (102, 5, N'佳里區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (103, 5, N'西港區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (104, 5, N'七股區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (105, 5, N'將軍區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (106, 5, N'學甲區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (107, 5, N'北門區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (108, 5, N'新營區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (109, 5, N'後壁區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (110, 5, N'白河區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (111, 5, N'東山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (112, 5, N'六甲區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (113, 5, N'下營區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (114, 5, N'柳營區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (115, 5, N'鹽水區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (116, 5, N'善化區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (117, 5, N'大內區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (118, 5, N'山上區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (119, 5, N'新市區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (120, 5, N'安定區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (121, 6, N'楠梓區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (122, 6, N'左營區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (123, 6, N'鼓山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (124, 6, N'三民區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (125, 6, N'鹽埕區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (126, 6, N'前金區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (127, 6, N'新興區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (128, 6, N'苓雅區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (129, 6, N'前鎮區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (130, 6, N'旗津區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (131, 6, N'小港區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (132, 6, N'鳳山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (133, 6, N'大寮區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (134, 6, N'鳥松區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (135, 6, N'林園區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (136, 6, N'仁武區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (137, 6, N'大樹區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (138, 6, N'大社區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (139, 6, N'岡山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (140, 6, N'路竹區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (141, 6, N'橋頭區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (142, 6, N'梓官區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (143, 6, N'彌陀區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (144, 6, N'永安區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (145, 6, N'燕巢區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (146, 6, N'田寮區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (147, 6, N'阿蓮區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (148, 6, N'茄萣區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (149, 6, N'湖內區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (150, 6, N'旗山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (151, 6, N'美濃區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (152, 6, N'內門區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (153, 6, N'杉林區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (154, 6, N'甲仙區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (155, 6, N'六龜區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (156, 6, N'茂林區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (157, 6, N'桃源區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (158, 6, N'那瑪夏')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (159, 7, N'宜蘭市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (160, 7, N'頭城鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (161, 7, N'礁溪鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (162, 7, N'壯圍鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (163, 7, N'員山鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (164, 7, N'羅東鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (165, 7, N'蘇澳鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (166, 7, N'五結鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (167, 7, N'三星鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (168, 7, N'冬山鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (169, 7, N'大同鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (170, 7, N'南澳鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (171, 8, N'竹北市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (172, 8, N'竹東鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (173, 8, N'新埔鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (174, 8, N'關西鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (175, 8, N'湖口鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (176, 8, N'新豐鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (177, 8, N'峨眉鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (178, 8, N'寶山鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (179, 8, N'北埔鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (180, 8, N'芎林鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (181, 8, N'橫山鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (182, 8, N'尖石鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (183, 8, N'五峰鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (184, 9, N'苗栗市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (185, 9, N'頭份市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (186, 9, N'竹南鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (187, 9, N'後龍鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (188, 9, N'通霄鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (189, 9, N'苑裡鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (190, 9, N'卓蘭鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (191, 9, N'造橋鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (192, 9, N'西湖鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (193, 9, N'頭屋鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (194, 9, N'公館鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (195, 9, N'銅鑼鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (196, 9, N'三義鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (197, 9, N'大湖鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (198, 9, N'獅潭鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (199, 9, N'三灣鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (200, 9, N'南庄鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (201, 9, N'泰安鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (202, 10, N'彰化市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (203, 10, N'員林市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (204, 10, N'和美鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (205, 10, N'鹿港鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (206, 10, N'溪湖鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (207, 10, N'二林鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (208, 10, N'田中鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (209, 10, N'北斗鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (210, 10, N'花壇鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (211, 10, N'芬園鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (212, 10, N'大村鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (213, 10, N'永靖鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (214, 10, N'伸港鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (215, 10, N'線西鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (216, 10, N'福興鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (217, 10, N'秀水鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (218, 10, N'埔心鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (219, 10, N'埔鹽鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (220, 10, N'大城鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (221, 10, N'芳苑鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (222, 10, N'竹塘鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (223, 10, N'社頭鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (224, 10, N'二水鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (225, 10, N'田尾鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (226, 10, N'埤頭鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (227, 10, N'溪州鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (228, 11, N'南投市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (229, 11, N'埔里鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (230, 11, N'草屯鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (231, 11, N'竹山鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (232, 11, N'集集鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (233, 11, N'名間鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (234, 11, N'鹿谷鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (235, 11, N'中寮鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (236, 11, N'魚池鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (237, 11, N'國姓鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (238, 11, N'水里鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (239, 11, N'信義鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (240, 11, N'仁愛鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (241, 12, N'斗六市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (242, 12, N'斗南鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (243, 12, N'林內鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (244, 12, N'古坑鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (245, 12, N'大埤鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (246, 12, N'莿桐鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (247, 12, N'虎尾鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (248, 12, N'西螺鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (249, 12, N'土庫鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (250, 12, N'褒忠鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (251, 12, N'二崙鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (252, 12, N'崙背鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (253, 12, N'麥寮鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (254, 12, N'臺西鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (255, 12, N'東勢鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (256, 12, N'北港鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (257, 12, N'元長鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (258, 12, N'四湖鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (259, 12, N'口湖鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (260, 12, N'水林鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (261, 13, N'東區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (262, 13, N'西區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (263, 14, N'太保市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (264, 14, N'朴子市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (265, 14, N'布袋鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (266, 14, N'大林鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (267, 14, N'民雄鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (268, 14, N'溪口鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (269, 14, N'新港鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (270, 14, N'六腳鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (271, 14, N'東石鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (272, 14, N'義竹鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (273, 14, N'鹿草鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (274, 14, N'水上鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (275, 14, N'中埔鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (276, 14, N'竹崎鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (277, 14, N'梅山鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (278, 14, N'番路鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (279, 14, N'大埔鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (280, 14, N'阿里山鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (281, 15, N'屏東市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (282, 15, N'潮州鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (283, 15, N'東港鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (284, 15, N'恆春鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (285, 15, N'萬丹鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (286, 15, N'崁頂鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (287, 15, N'新園鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (288, 15, N'林邊鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (289, 15, N'南州鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (290, 15, N'琉球鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (291, 15, N'枋寮鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (292, 15, N'枋山鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (293, 15, N'車城鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (294, 15, N'滿州鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (295, 15, N'高樹鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (296, 15, N'九如鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (297, 15, N'鹽埔鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (298, 15, N'里港鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (299, 15, N'內埔鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (300, 15, N'竹田鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (301, 15, N'長治鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (302, 15, N'麟洛鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (303, 15, N'萬巒鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (304, 15, N'新埤鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (305, 15, N'佳冬鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (306, 15, N'霧臺鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (307, 15, N'泰武鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (308, 15, N'瑪家鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (309, 15, N'來義鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (310, 15, N'春日鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (311, 15, N'獅子鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (312, 15, N'牡丹鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (313, 15, N'三地門鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (314, 16, N'臺東市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (315, 16, N'成功鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (316, 16, N'關山鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (317, 16, N'長濱鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (318, 16, N'池上鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (319, 16, N'東河鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (320, 16, N'鹿野鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (321, 16, N'卑南鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (322, 16, N'大武鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (323, 16, N'綠島鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (324, 16, N'太麻里鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (325, 16, N'海端鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (326, 16, N'延平鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (327, 16, N'金峰鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (328, 16, N'達仁鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (329, 16, N'蘭嶼鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (330, 17, N'花蓮市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (331, 17, N'吉安鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (332, 17, N'壽豐鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (333, 17, N'新城鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (334, 17, N'鳳林鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (335, 17, N'光復鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (336, 17, N'玉里鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (337, 17, N'豐濱鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (338, 17, N'瑞穗鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (339, 17, N'富里鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (340, 17, N'秀林鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (341, 17, N'萬榮鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (342, 17, N'卓溪鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (343, 18, N'馬公市')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (344, 18, N'湖西鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (345, 18, N'白沙鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (346, 18, N'西嶼鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (347, 18, N'望安鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (348, 18, N'七美鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (349, 19, N'仁愛區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (350, 19, N'中正區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (351, 19, N'信義區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (352, 19, N'中山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (353, 19, N'安樂區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (354, 19, N'暖暖區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (355, 19, N'七堵區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (356, 20, N'東區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (357, 20, N'北區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (358, 20, N'香山區')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (359, 21, N'金城鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (360, 21, N'金湖鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (361, 21, N'金沙鎮')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (362, 21, N'金寧鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (363, 21, N'烈嶼鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (364, 21, N'烏坵鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (365, 22, N'南竿鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (366, 22, N'北竿鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (367, 22, N'莒光鄉')
GO
INSERT [dbo].[dist] ([distPkId], [cityPkId], [distName]) VALUES (368, 22, N'東引鄉')
GO
SET IDENTITY_INSERT [dbo].[dist] OFF
GO
SET IDENTITY_INSERT [dbo].[items] ON 
GO
INSERT [dbo].[items] ([itemPkId], [itemName]) VALUES (1, N'齬齒')
GO
INSERT [dbo].[items] ([itemPkId], [itemName]) VALUES (2, N'洗牙')
GO
INSERT [dbo].[items] ([itemPkId], [itemName]) VALUES (3, N'牙周病')
GO
INSERT [dbo].[items] ([itemPkId], [itemName]) VALUES (4, N'人工贗復')
GO
INSERT [dbo].[items] ([itemPkId], [itemName]) VALUES (5, N'根管治療')
GO
INSERT [dbo].[items] ([itemPkId], [itemName]) VALUES (6, N'顯微根管')
GO
INSERT [dbo].[items] ([itemPkId], [itemName]) VALUES (7, N'冷光美白')
GO
INSERT [dbo].[items] ([itemPkId], [itemName]) VALUES (8, N'全口矯正')
GO
INSERT [dbo].[items] ([itemPkId], [itemName]) VALUES (9, N'兒童牙科')
GO
INSERT [dbo].[items] ([itemPkId], [itemName]) VALUES (10, N'敏感性牙齒')
GO
SET IDENTITY_INSERT [dbo].[items] OFF
GO
SET IDENTITY_INSERT [dbo].[member] ON 
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (1, N'admin', N'P@ssw0rd123456', N'admin', N'admin', N'台北市信義區信義路三段390號', N'0266316666', N'admin', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (2, N'Tanjirou@gmail.com.tw', N'P@ssw0rd123', N'F123456789', N'陳文森', N'台北市信義區信義路一段1號', N'0911111111', N'停權', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (3, N'asdw@gmail.com', N'P@ssw0rd123', N'A123456789', N'張文豪', N'新北市板橋區板橋路一段2號', N'0922222222', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (4, N'Zenitsu@gmail.com.tw', N'P@ssw0rd123', N'B123456789', N'謝均線', N'桃園市桃園區桃園路一段3號', N'0933333333', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (5, N'Inosuke@gmail.com.tw', N'P@ssw0rd123', N'C123456789', N'劉煒銘', N'新竹市香山區香山路一段4號', N'0944444444', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (6, N'ssfee@gmail.com', N'P@ssw0rd123', N'D123456789', N'柳家儀', N'苗栗縣後龍鎮後龍路一段5號', N'0955555555', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (7, N'eee@gmail.com', N'P@ssw0rd123', N'E123456789', N'王耘姝', N'台中市西屯區西屯路一段6號', N'0966666666', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (11, N'Zenitsu@gmail.com.tw', N'qq11!!!', N'R192284721', N'何家仁', N'台北市大安區吳興街282號', N'0922114333', N'未開通', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (12, N'tihtom@gmail.com', N'qq33!!!', N'S123456789', N'蔡東儒', N'高雄市路竹區大社路二巷20號', N'0975111716', N'已填寫', N'U5671f6d9439d20c1c1d61e405c900406')
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (19, N'EEIT121_30@outlook.com', N'P@ssw0rd123', N'A228028833', N'鄭詩涵', N'新竹縣橫山鄉棒球三路335巷350弄656號87樓', N'0914693339', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (23, N'helloworld@gmail.com', N'P@ssw0rd123', N'G291292012', N'林惠庭', N'連江縣北竿鄉重仁街一段488巷828號', N'0932985872', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (25, N'helloTaiwan@gmail.com', N'P@ssw0rd123', N'A130871394', N'譚銘', N'新竹市香山區鳳楠路八段451巷301弄398號2樓', N'0975395302', N'停權', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (26, N'hellllll@gmail.com', N'P@ssw0rd123
', N'A161486674', N'詹宗霖', N'新竹市北區竹林路529巷154號85樓', N'0988178656', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (27, N'xixi@gmail.com', N'P@ssw0rd123
', N'A187056176', N'藍瑋誠', N'新北市坪林區榮豐路734巷347弄541號', N'0997181815', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (28, N'hehehe@outlook.com', N'P@ssw0rd123
', N'A190083043', N'薛志庭', N'澎湖縣七美鄉東信路581巷444號', N'0949153259', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (29, N'booooo@gmail.com', N'P@ssw0rd123', N'A185809900', N'紀豪宇', N'新北市新店區梅亭東街二段86號', N'0960821869', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (30, N'haolei@yahoo.com.tw', N'P@ssw0rd123
', N'A138983702', N'壽彥建', N'基隆市信義區昭德街二段241巷737號', N'0917938243', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (32, N'zaoan@msn.com.tw', N'P@ssw0rd123', N'A255981848', N'鄭婉婷', N'南投縣中寮鄉工業區二十四街54巷854弄204號55樓', N'0932611888', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (34, N'tttt@yahoo.com.tw', N'P@ssw0rd123
', N'A254423310', N'藍文雯', N'新北市新莊區瑞發路五段866號57樓', N'0964817532', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (35, N'zhiguan@yahoo.com.tw', N'P@ssw0rd123
', N'A238869389', N'益思怡', N'新竹縣尖石鄉太原三路二段294巷212弄295號62樓', N'0969121664', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (36, N'gancheng@gmail.com', N'P@ssw0rd123', N'A293921195', N'鄭貞', N'臺南市麻豆區桐竹街五段450巷910弄218號', N'0917533511', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (38, N'chidachiji@outlook.com.tw', N'P@ssw0rd123', N'A243900333', N'秋郁穎', N'宜蘭縣南澳鄉坤成街502巷709弄512號93樓', N'0965101774', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (39, N'xiangheyinliao@yahoo.com.tw', N'P@ssw0rd123', N'A207430616', N'黃君佩', N'臺南市麻豆區頂湖五路五段857巷633號35樓', N'0997949532', N'已填寫', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (41, N'showyouwant2017@gmail.com', N'a,123123', N'C121601119', N'金城武', N'基隆市安樂區新西街一段66號', N'0985329401', N'已開通', NULL)
GO
INSERT [dbo].[member] ([memberPkId], [memberAccount], [memberPwd], [memberIdNumber], [memberName], [memberAddress], [memberPhone], [memberStatus], [memberLineId]) VALUES (46, N'zzz63214780000@gmail.com', N'a,123123', N'C121601118', N'周君憲', N'基隆市安樂區新西街一段66號', N'0985329401', N'未開通', NULL)
GO
SET IDENTITY_INSERT [dbo].[member] OFF
GO
INSERT [dbo].[memberDetails] ([memberPkId], [emergencyContact], [emergencyNumber], [emergencyRelationship], [smoke], [betelNut], [diseases], [allergy], [surgery]) VALUES (2, N'陳勇志', N'0911001001', N'父', N'是', N'否', N'無', N'無', N'多處骨折手術')
GO
INSERT [dbo].[memberDetails] ([memberPkId], [emergencyContact], [emergencyNumber], [emergencyRelationship], [smoke], [betelNut], [diseases], [allergy], [surgery]) VALUES (3, N'張菲', N'0922002002', N'父', N'否', N'否', N'無', N'無', N'咬合矯正')
GO
INSERT [dbo].[memberDetails] ([memberPkId], [emergencyContact], [emergencyNumber], [emergencyRelationship], [smoke], [betelNut], [diseases], [allergy], [surgery]) VALUES (4, N'謝金燕', N'0933003003', N'母', N'否', N'是', N'無', N'無', N'結紮')
GO
INSERT [dbo].[memberDetails] ([memberPkId], [emergencyContact], [emergencyNumber], [emergencyRelationship], [smoke], [betelNut], [diseases], [allergy], [surgery]) VALUES (5, N'劉德華', N'0944004004', N'父', N'是', N'是', N'無', N'無', N'無')
GO
INSERT [dbo].[memberDetails] ([memberPkId], [emergencyContact], [emergencyNumber], [emergencyRelationship], [smoke], [betelNut], [diseases], [allergy], [surgery]) VALUES (6, N'柳金火', N'0955005005', N'父', N'是', N'否', N'無', N'無', N'無')
GO
INSERT [dbo].[memberDetails] ([memberPkId], [emergencyContact], [emergencyNumber], [emergencyRelationship], [smoke], [betelNut], [diseases], [allergy], [surgery]) VALUES (7, N'王子芸', N'0966006006', N'母', N'否', N'否', N'無', N'無', N'無')
GO
INSERT [dbo].[memberDetails] ([memberPkId], [emergencyContact], [emergencyNumber], [emergencyRelationship], [smoke], [betelNut], [diseases], [allergy], [surgery]) VALUES (12, N'林永鑫', N'0911222333', N'兄', N'否', N'是', N'無', N'無', N'無')
GO
INSERT [dbo].[memberDetails] ([memberPkId], [emergencyContact], [emergencyNumber], [emergencyRelationship], [smoke], [betelNut], [diseases], [allergy], [surgery]) VALUES (19, N'鄭軒弘', N'0988124212', N'姊弟', N'否', N'否', N'無', N'海鮮', N'心導管手術')
GO
SET IDENTITY_INSERT [dbo].[orderDetails] ON 
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (5, 2, 3, 4)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (6, 2, 1, 1)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (7, 3, 4, 2)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (9, 5, 2, 3)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (10, 5, 5, 6)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (11, 5, 4, 7)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (12, 5, 3, 4)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (13, 6, 5, 6)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (14, 6, 4, 7)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (15, 6, 3, 6)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (17, 7, 5, 6)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (19, 7, 2, 4)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (20, 8, 5, 6)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (22, 8, 4, 3)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (26, 10, 5, 6)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (28, 10, 4, 7)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (29, 11, 5, 6)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (31, 11, 4, 7)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (32, 11, 3, 5)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (33, 12, 5, 18)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (35, 12, 4, 7)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (36, 12, 3, 5)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (37, 13, 5, 18)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (39, 13, 4, 19)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (40, 13, 3, 13)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (41, 14, 5, 18)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (43, 14, 4, 19)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (44, 14, 3, 13)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (45, 14, 2, 7)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (46, 15, 5, 18)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (48, 15, 4, 19)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (49, 15, 3, 13)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (50, 15, 2, 7)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (51, 16, 5, 18)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (53, 16, 4, 19)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (54, 16, 3, 1)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (55, 17, 5, 18)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (57, 17, 3, 1)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (58, 18, 5, 20)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (60, 18, 3, 5)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (61, 19, 5, 20)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (63, 19, 3, 5)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (64, 19, 4, 5)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (65, 20, 5, 20)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (67, 20, 3, 5)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (68, 20, 4, 5)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (69, 21, 5, 20)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (71, 21, 3, 2)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (72, 21, 4, 2)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (73, 22, 5, 20)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (75, 22, 3, 2)
GO
INSERT [dbo].[orderDetails] ([orderDetailPkId], [orderPkId], [productPkId], [orderQuantity]) VALUES (76, 22, 4, 2)
GO
SET IDENTITY_INSERT [dbo].[orderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[orders] ON 
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (2, 12, NULL, 28510, N'已付款', N'台北市大安區市民大道158號', N'0975111716', N'蔡東儒', CAST(N'2021-01-30T00:00:00.0000000' AS DateTime2), N'202101300001', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (3, 3, NULL, 748, N'已付款', N'臺北市中正區', N'', N'', CAST(N'2021-01-30T00:00:00.0000000' AS DateTime2), N'202101300002', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (5, 41, NULL, 42477, N'未付款', N'臺北市中正區信義路三段153號', N'0987654321', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030001', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (6, 41, NULL, 36359, N'未付款', N'臺南市南區三民路三段153號', N'0900654999', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030002', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (7, 41, NULL, 40146, N'未付款', N'高雄市楠梓區南深路三段153號', N'0989654543', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030003', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (8, 41, NULL, 11883, N'未付款', N'嘉義縣太保市松江路三段199號', N'0906656621', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030004', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (9, 41, NULL, 11883, N'未付款', N'基隆市仁愛區信義路三段63號', N'0987767321', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030005', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (10, 41, NULL, 14078, N'未付款', N'南投縣南投市順風路三段153號', N'0955654321', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030006', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (11, 41, NULL, 33478, N'未付款', N'金門縣金城鎮金將路三段153號', N'0937654322', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030007', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (12, 41, NULL, 39466, N'未付款', N'基隆市信義區信義路一段156號', N'0988654666', N'羅志祥', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030008', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (13, 41, NULL, 74094, N'已付款', N'花蓮縣花蓮市蓮花路三段153號', N'0900654777', N'羅志祥', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030009', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (14, 41, NULL, 125124, N'已付款', N'臺東縣臺東市七星路153號', N'0955654323', N'羅志祥', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030010', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (15, 41, NULL, 129120, N'已付款', N'苗栗縣苗栗市苗疆路166號', N'0957654123', N'羅志祥', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030011', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (16, 41, NULL, 22539, N'已付款', N'新竹縣竹北市東明路四段154號', N'0900654532', N'羅志祥', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030012', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (17, 41, NULL, 20854, N'已付款', N'雲林縣斗六市西湖路二段144號', N'0998533321', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030013', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (18, 41, NULL, 37372, N'已付款', N'屏東縣屏東市琉球路三段13號', N'0955654330', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030014', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (19, 41, NULL, 38867, N'已付款', N'彰化縣溪湖鎮連城路五段144號', N'0966654543', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030015', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (20, 41, NULL, 38867, N'已付款', N'雲林縣元長鄉胡誠路三段153號', N'0955874320', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030016', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (21, 41, NULL, 26330, N'已付款', N'高雄市橋頭區丁玲路二段15號', N'0966874320', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030017', NULL)
GO
INSERT [dbo].[orders] ([orderPkId], [memberPkId], [couponPkId], [totalPayment], [orderStatus], [shipAddress], [mobilephone], [receiver], [orderDate], [orderNo], [returnReason]) VALUES (22, 41, NULL, 26330, N'已付款', N'澎湖縣西嶼鄉物姜路三段153號', N'0955654344', N'張藝興', CAST(N'2021-02-03T00:00:00.0000000' AS DateTime2), N'202102030018', NULL)
GO
SET IDENTITY_INSERT [dbo].[orders] OFF
GO
SET IDENTITY_INSERT [dbo].[products] ON 
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (1, N'【德國百靈Oral-B】iO9微震科技電動牙刷', CAST(N'2021-02-04' AS Date), 1299, 100, N'上架', N'https://i.imgur.com/Gkz12cs.jpg', N'電動牙刷', N'【德國百靈Oral-B】iO9微震科技電動牙刷-黑色(微磁電動牙刷)', N'品牌：歐樂B|品名：ORAL-B iO9 微震科技電動牙刷|顏色：黑|本體尺寸(cm)：18*10*26cm|商品重量(g)：900g|產地：本體-德國')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (2, N'【國際牌】音波電動牙刷', CAST(N'2021-01-20' AS Date), 7290, 30, N'上架', N'https://i.imgur.com/5rj8mSy.jpg', N'電動牙刷', N'【國際牌】年度新品音波電動牙刷(EW-DP54-S/A)+櫸木柄、矽膠餐具五件組', N'本體尺寸：高23.5 x 寬2.9 x 深3.5cm|重量：110g|電壓：100-240V|充電/使用時間：充電1小時，約可連續使用90分鐘|附件：攜帶盒*1、刷頭放置架*1|產地：日本(充電座產地：中國)')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (3, N'【Philips飛利浦】高效空氣動能牙線機/沖牙機', CAST(N'2021-01-20' AS Date), 3880, 30, N'上架', N'https://i.imgur.com/Y0RYIZp.jpg', N'沖牙機', N'【Philips 飛利浦】高效空氣動能牙線機/沖牙機(HX8401/03)', N'型號：HX8401/03|尺寸：24D x14W x9H (cm)|重量：430g|產地：中國')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (4, N'【Ora2愛樂齒】微觸感牙刷', CAST(N'2021-01-20' AS Date), 299, 30, N'上架', N'https://i.imgur.com/XjXFAKv.jpg', N'牙刷', N'【Ora2愛樂齒】me微觸感牙刷6支/盒(超軟毛，顏色隨機出貨)', N'材質：刷毛:尼龍。刷柄：聚乙烯塑膠。耐熱溫度:60度C|包裝入數：6支/盒|產地：日本')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (5, N'【舒酸定】多元護理+深層潔淨牙膏', CAST(N'2021-01-20' AS Date), 499, 30, N'上架', N'https://i.imgur.com/Ns0C3to.jpg', N'牙膏', N'【舒酸定】爆殺8入組牙膏-多元護理120g*6+深層潔淨100g*2', N'品名：舒酸定長效抗敏-多元護理|規格：120g x6入|用途：幫助保護牙齦健康|保存期限：三年|原產地：泰國')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (6, N'【Philips飛利浦】低能空氣動能牙線機/沖牙機', CAST(N'2021-01-30' AS Date), 123, 9, N'下架', N'https://i.imgur.com/Q6vEcpT.jpg', N'牙刷', N'123123', N'123123')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (10, N'【SAMPO 聲寶】五段式音波震動牙刷', CAST(N'2021-02-23' AS Date), 888, 100, N'上架', N'https://i.imgur.com/m6DNxYl.jpg', N'電動牙刷', N'【SAMPO 聲寶】五段式音波震動牙刷共附9刷頭(三年份刷頭超值組)', N'型號：TB-Z1814L|顏色：黑色|額定電壓/額定頻率：DC5V /無|總額定消耗電功率：1W|機體淨重：79g|產地：中國')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (12, N'【家適帝】3段脈衝便攜充電沖牙機', CAST(N'2021-02-03' AS Date), 889, 100, N'上架', N'https://i.imgur.com/bZ3nyFD.jpg', N'沖牙機', N'【家適帝】3段脈衝便攜充電沖牙機', N'本體尺寸：(寬)7*(深)9*(高)23cm|水箱容量：300ml|輸入電壓：3.6V|消耗功率：5W|型號：JL-112PD-000|材質：ABS材質')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (13, N'realme 聲波電動牙刷', CAST(N'2021-02-03' AS Date), 999, 100, N'下架', N'https://i.imgur.com/FKSRy0u.png', N'電動牙刷', N'34,000次/分鐘磁浮聲波馬達', N'聲波馬達:34200次/分')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (14, N'realme 聲波電動牙刷', CAST(N'2021-02-03' AS Date), 999, 100, N'下架', N'https://i.imgur.com/59yZlEw.jpg', N'電動牙刷', N'34,000次/分鐘磁浮聲波馬達', N'聲波馬達:34200次/分')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (17, N'【日本PRO SONIC NEO】超音波電動牙刷', CAST(N'2021-02-03' AS Date), 602, 100, N'上架', N'https://i.imgur.com/Paae30p.jpg', N'電動牙刷', N'【日本PRO SONIC NEO】超音波電動牙刷(送細尖替換刷頭x10+專用刷頭蓋x1)', N'主機尺寸：18mm*195mm|主機重量：38g|手把材質：ABS樹脂|刷頭材質：尼龍毛|耐熱度：50度')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (18, N'【Kolin 歌林】USB充電攜帶型電動沖牙機', CAST(N'2021-02-03' AS Date), 888, 100, N'上架', N'https://i.imgur.com/1jvHZ3Q.jpg', N'沖牙機', N'【Kolin 歌林】USB充電攜帶型電動沖牙機 KTB-JB185', N'產品尺寸：56*273*70mm|產品重量：276g|產地：中國')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (19, N'【MUJI 無印良品】攜帶型牙刷組', CAST(N'2021-02-03' AS Date), 280, 100, N'上架', N'https://i.imgur.com/oAdFR62.jpg', N'牙刷', N'【MUJI 無印良品】攜帶型牙刷組/折疊式牙刷+牙膏', N'包裝組合：旅行組|類型：軟毛')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (20, N'【PERIOE 倍麗兒】PERIOE 7效蜂膠牙膏', CAST(N'2021-02-03' AS Date), 199, 100, N'上架', N'https://i.imgur.com/kPx6cXF.jpg', N'牙膏', N'【PERIOE 倍麗兒】PERIOE 7效蜂膠牙膏120g*3三款任選(經典藍/青檸紅/沁涼綠)', N'包裝組合：多入組|類型：膏狀|容量：120gX3|有效期限：保存期限3年')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (21, N'【舒酸定】抗敏纖柔毛牙刷', CAST(N'2021-02-03' AS Date), 129, 100, N'上架', N'https://i.imgur.com/KCs79Lh.jpg', N'牙刷', N'【舒酸定】深層潔淨-抗敏纖柔毛牙刷 3入', N'規格：3入|保存期限：五年|產地：中國')
GO
INSERT [dbo].[products] ([productPkId], [productName], [productUpdateDate], [productPrice], [productQuantity], [productStatus], [productImage], [productCategory], [productProfile], [productSpec]) VALUES (25, N'realme 聲波電動牙刷', CAST(N'2021-02-04' AS Date), 999, 100, N'下架', N'https://i.imgur.com/mr80XjF.jpg', N'電動牙刷', N'34,000次/分鐘磁浮聲波馬達', N'聲波馬達:34200次/分')
GO
SET IDENTITY_INSERT [dbo].[products] OFF
GO
SET IDENTITY_INSERT [dbo].[timeTable] ON 
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (1, N'Sunday', N'08:00-08:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (2, N'Sunday', N'08:30-09:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (3, N'Sunday', N'09:00-09:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (4, N'Sunday', N'09:30-10:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (5, N'Sunday', N'10:00-10:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (6, N'Sunday', N'10:30-11:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (7, N'Sunday', N'11:00-11:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (8, N'Sunday', N'11:30-12:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (9, N'Sunday', N'12:00-12:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (10, N'Sunday', N'12:30-13:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (11, N'Sunday', N'13:00-13:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (12, N'Sunday', N'13:30-14:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (13, N'Sunday', N'14:00-14:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (14, N'Sunday', N'14:30-15:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (15, N'Sunday', N'15:00-15:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (16, N'Sunday', N'15:30-16:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (17, N'Sunday', N'16:00-16:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (18, N'Sunday', N'16:30-17:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (19, N'Sunday', N'17:00-17:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (20, N'Sunday', N'17:30-18:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (21, N'Sunday', N'18:00-18:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (22, N'Sunday', N'18:30-19:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (23, N'Sunday', N'19:00-19:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (24, N'Sunday', N'19:30-20:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (25, N'Sunday', N'20:00-20:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (26, N'Sunday', N'20:30-21:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (27, N'Sunday', N'21:00-21:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (28, N'Sunday', N'21:30-22:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (29, N'Monday', N'08:00-08:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (30, N'Monday', N'08:30-09:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (31, N'Monday', N'09:00-09:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (32, N'Monday', N'09:30-10:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (33, N'Monday', N'10:00-10:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (34, N'Monday', N'10:30-11:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (35, N'Monday', N'11:00-11:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (36, N'Monday', N'11:30-12:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (37, N'Monday', N'12:00-12:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (38, N'Monday', N'12:30-13:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (39, N'Monday', N'13:00-13:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (40, N'Monday', N'13:30-14:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (41, N'Monday', N'14:00-14:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (42, N'Monday', N'14:30-15:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (43, N'Monday', N'15:00-15:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (44, N'Monday', N'15:30-16:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (45, N'Monday', N'16:00-16:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (46, N'Monday', N'16:30-17:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (47, N'Monday', N'17:00-17:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (48, N'Monday', N'17:30-18:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (49, N'Monday', N'18:00-18:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (50, N'Monday', N'18:30-19:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (51, N'Monday', N'19:00-19:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (52, N'Monday', N'19:30-20:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (53, N'Monday', N'20:00-20:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (54, N'Monday', N'20:30-21:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (55, N'Monday', N'21:00-21:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (56, N'Monday', N'21:30-22:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (57, N'Tuesday', N'08:00-08:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (58, N'Tuesday', N'08:30-09:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (59, N'Tuesday', N'09:00-09:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (60, N'Tuesday', N'09:30-10:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (61, N'Tuesday', N'10:00-10:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (62, N'Tuesday', N'10:30-11:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (63, N'Tuesday', N'11:00-11:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (64, N'Tuesday', N'11:30-12:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (65, N'Tuesday', N'12:00-12:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (66, N'Tuesday', N'12:30-13:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (67, N'Tuesday', N'13:00-13:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (68, N'Tuesday', N'13:30-14:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (69, N'Tuesday', N'14:00-14:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (70, N'Tuesday', N'14:30-15:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (71, N'Tuesday', N'15:00-15:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (72, N'Tuesday', N'15:30-16:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (73, N'Tuesday', N'16:00-16:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (74, N'Tuesday', N'16:30-17:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (75, N'Tuesday', N'17:00-17:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (76, N'Tuesday', N'17:30-18:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (77, N'Tuesday', N'18:00-18:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (78, N'Tuesday', N'18:30-19:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (79, N'Tuesday', N'19:00-19:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (80, N'Tuesday', N'19:30-20:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (81, N'Tuesday', N'20:00-20:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (82, N'Tuesday', N'20:30-21:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (83, N'Tuesday', N'21:00-21:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (84, N'Tuesday', N'21:30-22:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (85, N'Wednesday', N'08:00-08:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (86, N'Wednesday', N'08:30-09:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (87, N'Wednesday', N'09:00-09:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (88, N'Wednesday', N'09:30-10:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (89, N'Wednesday', N'10:00-10:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (90, N'Wednesday', N'10:30-11:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (91, N'Wednesday', N'11:00-11:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (92, N'Wednesday', N'11:30-12:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (93, N'Wednesday', N'12:00-12:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (94, N'Wednesday', N'12:30-13:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (95, N'Wednesday', N'13:00-13:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (96, N'Wednesday', N'13:30-14:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (97, N'Wednesday', N'14:00-14:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (98, N'Wednesday', N'14:30-15:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (99, N'Wednesday', N'15:00-15:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (100, N'Wednesday', N'15:30-16:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (101, N'Wednesday', N'16:00-16:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (102, N'Wednesday', N'16:30-17:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (103, N'Wednesday', N'17:00-17:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (104, N'Wednesday', N'17:30-18:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (105, N'Wednesday', N'18:00-18:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (106, N'Wednesday', N'18:30-19:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (107, N'Wednesday', N'19:00-19:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (108, N'Wednesday', N'19:30-20:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (109, N'Wednesday', N'20:00-20:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (110, N'Wednesday', N'20:30-21:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (111, N'Wednesday', N'21:00-21:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (112, N'Wednesday', N'21:30-22:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (113, N'Thursday', N'08:00-08:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (114, N'Thursday', N'08:30-09:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (115, N'Thursday', N'09:00-09:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (116, N'Thursday', N'09:30-10:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (117, N'Thursday', N'10:00-10:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (118, N'Thursday', N'10:30-11:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (119, N'Thursday', N'11:00-11:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (120, N'Thursday', N'11:30-12:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (121, N'Thursday', N'12:00-12:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (122, N'Thursday', N'12:30-13:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (123, N'Thursday', N'13:00-13:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (124, N'Thursday', N'13:30-14:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (125, N'Thursday', N'14:00-14:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (126, N'Thursday', N'14:30-15:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (127, N'Thursday', N'15:00-15:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (128, N'Thursday', N'15:30-16:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (129, N'Thursday', N'16:00-16:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (130, N'Thursday', N'16:30-17:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (131, N'Thursday', N'17:00-17:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (132, N'Thursday', N'17:30-18:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (133, N'Thursday', N'18:00-18:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (134, N'Thursday', N'18:30-19:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (135, N'Thursday', N'19:00-19:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (136, N'Thursday', N'19:30-20:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (137, N'Thursday', N'20:00-20:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (138, N'Thursday', N'20:30-21:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (139, N'Thursday', N'21:00-21:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (140, N'Thursday', N'21:30-22:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (141, N'Friday', N'08:00-08:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (142, N'Friday', N'08:30-09:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (143, N'Friday', N'09:00-09:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (144, N'Friday', N'09:30-10:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (145, N'Friday', N'10:00-10:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (146, N'Friday', N'10:30-11:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (147, N'Friday', N'11:00-11:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (148, N'Friday', N'11:30-12:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (149, N'Friday', N'12:00-12:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (150, N'Friday', N'12:30-13:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (151, N'Friday', N'13:00-13:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (152, N'Friday', N'13:30-14:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (153, N'Friday', N'14:00-14:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (154, N'Friday', N'14:30-15:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (155, N'Friday', N'15:00-15:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (156, N'Friday', N'15:30-16:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (157, N'Friday', N'16:00-16:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (158, N'Friday', N'16:30-17:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (159, N'Friday', N'17:00-17:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (160, N'Friday', N'17:30-18:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (161, N'Friday', N'18:00-18:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (162, N'Friday', N'18:30-19:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (163, N'Friday', N'19:00-19:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (164, N'Friday', N'19:30-20:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (165, N'Friday', N'20:00-20:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (166, N'Friday', N'20:30-21:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (167, N'Friday', N'21:00-21:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (168, N'Friday', N'21:30-22:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (169, N'Saturday', N'08:00-08:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (170, N'Saturday', N'08:30-09:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (171, N'Saturday', N'09:00-09:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (172, N'Saturday', N'09:30-10:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (173, N'Saturday', N'10:00-10:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (174, N'Saturday', N'10:30-11:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (175, N'Saturday', N'11:00-11:30', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (176, N'Saturday', N'11:30-12:00', N'上午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (177, N'Saturday', N'12:00-12:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (178, N'Saturday', N'12:30-13:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (179, N'Saturday', N'13:00-13:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (180, N'Saturday', N'13:30-14:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (181, N'Saturday', N'14:00-14:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (182, N'Saturday', N'14:30-15:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (183, N'Saturday', N'15:00-15:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (184, N'Saturday', N'15:30-16:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (185, N'Saturday', N'16:00-16:30', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (186, N'Saturday', N'16:30-17:00', N'下午')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (187, N'Saturday', N'17:00-17:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (188, N'Saturday', N'17:30-18:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (189, N'Saturday', N'18:00-18:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (190, N'Saturday', N'18:30-19:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (191, N'Saturday', N'19:00-19:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (192, N'Saturday', N'19:30-20:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (193, N'Saturday', N'20:00-20:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (194, N'Saturday', N'20:30-21:00', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (195, N'Saturday', N'21:00-21:30', N'晚間')
GO
INSERT [dbo].[timeTable] ([timeTablePkId], [weekdays], [times], [timeInterval]) VALUES (196, N'Saturday', N'21:30-22:00', N'晚間')
GO
SET IDENTITY_INSERT [dbo].[timeTable] OFF
GO
ALTER TABLE [dbo].[appointment] ADD  DEFAULT ('未回覆') FOR [memberReply]
GO
ALTER TABLE [dbo].[appointment] ADD  DEFAULT ('true') FOR [arrive]
GO
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD  CONSTRAINT [FK__appointme__clini__4B422AD5] FOREIGN KEY([clinicPkId])
REFERENCES [dbo].[clinic] ([clinicPkId])
GO
ALTER TABLE [dbo].[appointment] CHECK CONSTRAINT [FK__appointme__clini__4B422AD5]
GO
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD FOREIGN KEY([dentistPkId])
REFERENCES [dbo].[dentist] ([dentistPkId])
GO
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD FOREIGN KEY([itemPkId])
REFERENCES [dbo].[items] ([itemPkId])
GO
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD FOREIGN KEY([memberPkId])
REFERENCES [dbo].[member] ([memberPkId])
GO
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD FOREIGN KEY([timeTablePkId])
REFERENCES [dbo].[timeTable] ([timeTablePkId])
GO
ALTER TABLE [dbo].[appointment]  WITH CHECK ADD  CONSTRAINT [FKe50plxgle8k8w2opfhg592pyd] FOREIGN KEY([timeTablePkId])
REFERENCES [dbo].[timeTable] ([timeTablePkId])
GO
ALTER TABLE [dbo].[appointment] CHECK CONSTRAINT [FKe50plxgle8k8w2opfhg592pyd]
GO
ALTER TABLE [dbo].[clinic]  WITH CHECK ADD  CONSTRAINT [FK__clinic__clinicCi__3A179ED3] FOREIGN KEY([clinicCity])
REFERENCES [dbo].[city] ([cityPkId])
GO
ALTER TABLE [dbo].[clinic] CHECK CONSTRAINT [FK__clinic__clinicCi__3A179ED3]
GO
ALTER TABLE [dbo].[clinic]  WITH CHECK ADD  CONSTRAINT [FK__clinic__clinicDi__3B0BC30C] FOREIGN KEY([clinicDist])
REFERENCES [dbo].[dist] ([distPkId])
GO
ALTER TABLE [dbo].[clinic] CHECK CONSTRAINT [FK__clinic__clinicDi__3B0BC30C]
GO
ALTER TABLE [dbo].[comments]  WITH CHECK ADD FOREIGN KEY([appointmentPkId])
REFERENCES [dbo].[appointment] ([appointmentPkId])
GO
ALTER TABLE [dbo].[dentist]  WITH CHECK ADD  CONSTRAINT [FK__dentist__clinicP__3FD07829] FOREIGN KEY([clinicPkId])
REFERENCES [dbo].[clinic] ([clinicPkId])
GO
ALTER TABLE [dbo].[dentist] CHECK CONSTRAINT [FK__dentist__clinicP__3FD07829]
GO
ALTER TABLE [dbo].[dentistItem]  WITH CHECK ADD FOREIGN KEY([dentistPkId])
REFERENCES [dbo].[dentist] ([dentistPkId])
GO
ALTER TABLE [dbo].[dentistItem]  WITH CHECK ADD FOREIGN KEY([itemPkId])
REFERENCES [dbo].[items] ([itemPkId])
GO
ALTER TABLE [dbo].[dentistTime]  WITH CHECK ADD FOREIGN KEY([dentistPkId])
REFERENCES [dbo].[dentist] ([dentistPkId])
GO
ALTER TABLE [dbo].[dentistTime]  WITH CHECK ADD FOREIGN KEY([timeTablePkId])
REFERENCES [dbo].[timeTable] ([timeTablePkId])
GO
ALTER TABLE [dbo].[dentistTime]  WITH CHECK ADD  CONSTRAINT [FK9axb0uhi6ox6uuxr3a9v3tvdt] FOREIGN KEY([timeTablePkId])
REFERENCES [dbo].[timeTable] ([timeTablePkId])
GO
ALTER TABLE [dbo].[dentistTime] CHECK CONSTRAINT [FK9axb0uhi6ox6uuxr3a9v3tvdt]
GO
ALTER TABLE [dbo].[dist]  WITH CHECK ADD FOREIGN KEY([cityPkId])
REFERENCES [dbo].[city] ([cityPkId])
GO
ALTER TABLE [dbo].[memberDetails]  WITH CHECK ADD FOREIGN KEY([memberPkId])
REFERENCES [dbo].[member] ([memberPkId])
GO
ALTER TABLE [dbo].[orderDetails]  WITH CHECK ADD FOREIGN KEY([orderPkId])
REFERENCES [dbo].[orders] ([orderPkId])
GO
ALTER TABLE [dbo].[orderDetails]  WITH CHECK ADD FOREIGN KEY([productPkId])
REFERENCES [dbo].[products] ([productPkId])
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK__orders__couponPk__5A846E65] FOREIGN KEY([couponPkId])
REFERENCES [dbo].[coupon] ([couponPkId])
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK__orders__couponPk__5A846E65]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD FOREIGN KEY([memberPkId])
REFERENCES [dbo].[member] ([memberPkId])
GO
USE [master]
GO
ALTER DATABASE [UYY_DB] SET  READ_WRITE 
GO
