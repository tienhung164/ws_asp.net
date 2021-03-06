USE [master]
GO
/****** Object:  Database [pallgree_cafe]    Script Date: 7/7/2022 12:52:32 PM ******/
CREATE DATABASE [pallgree_cafe]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'pallgree_cafe', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\pallgree_cafe.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'pallgree_cafe_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\pallgree_cafe_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [pallgree_cafe] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [pallgree_cafe].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [pallgree_cafe] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [pallgree_cafe] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [pallgree_cafe] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [pallgree_cafe] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [pallgree_cafe] SET ARITHABORT OFF 
GO
ALTER DATABASE [pallgree_cafe] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [pallgree_cafe] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [pallgree_cafe] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [pallgree_cafe] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [pallgree_cafe] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [pallgree_cafe] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [pallgree_cafe] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [pallgree_cafe] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [pallgree_cafe] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [pallgree_cafe] SET  DISABLE_BROKER 
GO
ALTER DATABASE [pallgree_cafe] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [pallgree_cafe] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [pallgree_cafe] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [pallgree_cafe] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [pallgree_cafe] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [pallgree_cafe] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [pallgree_cafe] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [pallgree_cafe] SET RECOVERY FULL 
GO
ALTER DATABASE [pallgree_cafe] SET  MULTI_USER 
GO
ALTER DATABASE [pallgree_cafe] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [pallgree_cafe] SET DB_CHAINING OFF 
GO
ALTER DATABASE [pallgree_cafe] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [pallgree_cafe] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [pallgree_cafe] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [pallgree_cafe] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'pallgree_cafe', N'ON'
GO
ALTER DATABASE [pallgree_cafe] SET QUERY_STORE = OFF
GO
USE [pallgree_cafe]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 7/7/2022 12:52:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[display_name] [nvarchar](50) NOT NULL,
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NOT NULL,
	[role] [int] NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill]    Script Date: 7/7/2022 12:52:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill](
	[id] [int] NOT NULL,
	[id_table] [int] NOT NULL,
	[time_checkin] [bigint] NOT NULL,
	[time_checkout] [bigint] NULL,
	[status] [int] NOT NULL,
	[employee_checkout] [int] NULL,
 CONSTRAINT [PK_Bill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bill_details]    Script Date: 7/7/2022 12:52:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bill_details](
	[id] [int] NOT NULL,
	[id_bill] [int] NOT NULL,
	[id_food] [int] NOT NULL,
	[count] [int] NULL,
	[total] [int] NULL,
 CONSTRAINT [PK_Bill_details] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 7/7/2022 12:52:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[discount] [int] NOT NULL,
	[min_spending] [int] NOT NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Food]    Script Date: 7/7/2022 12:52:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_category] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[description] [nvarchar](max) NULL,
	[image] [varchar](max) NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodCategory]    Script Date: 7/7/2022 12:52:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[status] [int] default 1 NOT NULL,
 CONSTRAINT [PK_FoodCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shop_infor]    Script Date: 7/7/2022 12:52:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shop_infor](
	[stk] [varchar](50) NOT NULL,
	[bank_name] [varchar](50) NOT NULL,
	[address] [varchar](50) NULL,
	[hotline] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Table]    Script Date: 7/7/2022 12:52:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Account] ([display_name], [username], [password], [role], [status]) VALUES (N'Admin', N'admin', N'Szvtive3YS6MHiX2O6JElvWxay30Tvstt848skt+lvc=', 1, 1)
INSERT [dbo].[Account] ([display_name], [username], [password], [role], [status]) VALUES (N'Phạm Hải Duyên', N'haiduyen', N'Szvtive3YS6MHiX2O6JElvWxay30Tvstt848skt+lvc=', 2, 1)
INSERT [dbo].[Account] ([display_name], [username], [password], [role], [status]) VALUES (N'Vũ Tiến Hưng', N'tienhung', N'Szvtive3YS6MHiX2O6JElvWxay30Tvstt848skt+lvc=', 2, 0)
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_display_name]  DEFAULT (N'No name') FOR [display_name]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_role]  DEFAULT ((2)) FOR [role]
GO
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [DF_Account_status]  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[Bill] ADD  CONSTRAINT [DF_Bill_status]  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[FoodCategory] ADD  CONSTRAINT [DF_FoodCategory_status]  DEFAULT ((1)) FOR [status]
GO
USE [master]
GO
ALTER DATABASE [pallgree_cafe] SET  READ_WRITE 
GO
