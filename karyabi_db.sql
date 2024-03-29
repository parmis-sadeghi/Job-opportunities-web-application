USE [master]
GO
/****** Object:  Database [karyabi_db]    Script Date: 1/23/2024 3:15:36 PM ******/
CREATE DATABASE [karyabi_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'karyabi_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\karyabi_db.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'karyabi_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\karyabi_db_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [karyabi_db] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [karyabi_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [karyabi_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [karyabi_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [karyabi_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [karyabi_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [karyabi_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [karyabi_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [karyabi_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [karyabi_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [karyabi_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [karyabi_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [karyabi_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [karyabi_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [karyabi_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [karyabi_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [karyabi_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [karyabi_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [karyabi_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [karyabi_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [karyabi_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [karyabi_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [karyabi_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [karyabi_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [karyabi_db] SET RECOVERY FULL 
GO
ALTER DATABASE [karyabi_db] SET  MULTI_USER 
GO
ALTER DATABASE [karyabi_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [karyabi_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [karyabi_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [karyabi_db] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'karyabi_db', N'ON'
GO
USE [karyabi_db]
GO
/****** Object:  Table [dbo].[employers]    Script Date: 1/23/2024 3:15:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employers](
	[em_id] [int] NOT NULL,
	[em_name] [nvarchar](50) NULL,
	[em_family] [nvarchar](100) NULL,
	[em_company] [nvarchar](100) NULL,
	[em_ceo] [nvarchar](100) NULL,
 CONSTRAINT [PK_employers] PRIMARY KEY CLUSTERED 
(
	[em_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobs]    Script Date: 1/23/2024 3:15:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobs](
	[jb_id] [int] NOT NULL,
	[jb_employer_id] [int] NULL,
	[jb_date] [nvarchar](50) NULL,
	[jb_name] [nvarchar](200) NULL,
	[jb_position] [nvarchar](50) NULL,
	[jb_status] [nvarchar](20) NULL,
 CONSTRAINT [PK_jobs] PRIMARY KEY CLUSTERED 
(
	[jb_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jobs_requests]    Script Date: 1/23/2024 3:15:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jobs_requests](
	[req_id] [int] IDENTITY(1,1) NOT NULL,
	[req_job_id] [int] NULL,
	[req_seeker_id] [int] NULL,
	[req_status] [nvarchar](50) NULL,
 CONSTRAINT [PK_jobs_requests] PRIMARY KEY CLUSTERED 
(
	[req_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seekers]    Script Date: 1/23/2024 3:15:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seekers](
	[se_id] [int] NOT NULL,
	[se_name] [nvarchar](50) NULL,
	[se_family] [nvarchar](100) NULL,
	[se_birthday] [nvarchar](50) NULL,
	[se_last_academy] [nvarchar](200) NULL,
	[se_cv] [nvarchar](max) NULL,
	[se_skill] [nvarchar](max) NULL,
 CONSTRAINT [PK_seekers] PRIMARY KEY CLUSTERED 
(
	[se_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 1/23/2024 3:15:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[u_id] [int] NOT NULL,
	[u_name] [nvarchar](50) NULL,
	[u_username] [nvarchar](50) NULL,
	[u_password] [nvarchar](100) NULL,
	[u_mobile] [nvarchar](50) NULL,
	[u_role] [int] NULL,
 CONSTRAINT [PK_users] PRIMARY KEY CLUSTERED 
(
	[u_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[employers] ([em_id], [em_name], [em_family], [em_company], [em_ceo]) VALUES (123456, N'Parmis', N'Sadeghi', N'Karyabi', N'Negar')
INSERT [dbo].[employers] ([em_id], [em_name], [em_family], [em_company], [em_ceo]) VALUES (805969, N'faraz', N'Eslami', N'Faraz Dade', N'faraz@gmail.com')
GO
INSERT [dbo].[jobs] ([jb_id], [jb_employer_id], [jb_date], [jb_name], [jb_position], [jb_status]) VALUES (604798, 123456, N'1402/11/03', N'Ui/Ux Developer', N'Member of Team', N'Active')
INSERT [dbo].[jobs] ([jb_id], [jb_employer_id], [jb_date], [jb_name], [jb_position], [jb_status]) VALUES (674900, 123456, N'1402/11/03', N'ASP.NET API Developer', N'Leader', N'Active')
GO
SET IDENTITY_INSERT [dbo].[jobs_requests] ON 

INSERT [dbo].[jobs_requests] ([req_id], [req_job_id], [req_seeker_id], [req_status]) VALUES (13, 674900, 789456, N'Accepted')
SET IDENTITY_INSERT [dbo].[jobs_requests] OFF
GO
INSERT [dbo].[seekers] ([se_id], [se_name], [se_family], [se_birthday], [se_last_academy], [se_cv], [se_skill]) VALUES (789456, N'Elham', N'khosravi', N'1382/02/15', N'Diplom', N'Work in Snapp', N'ASP.Net, SQL Server')
GO
INSERT [dbo].[users] ([u_id], [u_name], [u_username], [u_password], [u_mobile], [u_role]) VALUES (123456, N'parmis', N'p', N'123456', N'09393834521', 0)
INSERT [dbo].[users] ([u_id], [u_name], [u_username], [u_password], [u_mobile], [u_role]) VALUES (789456, N'sanaz', N's', N'123456', N'09193521571', 1)
INSERT [dbo].[users] ([u_id], [u_name], [u_username], [u_password], [u_mobile], [u_role]) VALUES (805969, N'faraz', N'faraz', N'faraz', NULL, 0)
GO
USE [master]
GO
ALTER DATABASE [karyabi_db] SET  READ_WRITE 
GO
