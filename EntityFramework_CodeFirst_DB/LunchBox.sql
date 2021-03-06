CREATE DATABASE [LunchBox]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LunchBox', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LunchBox.mdf' , SIZE = 5120KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LunchBox_log', FILENAME = N'D:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LunchBox_log.ldf' , SIZE = 2048KB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LunchBox] SET COMPATIBILITY_LEVEL = 120
GO
ALTER DATABASE [LunchBox] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LunchBox] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LunchBox] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LunchBox] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LunchBox] SET ARITHABORT OFF 
GO
ALTER DATABASE [LunchBox] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LunchBox] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LunchBox] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [LunchBox] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LunchBox] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LunchBox] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LunchBox] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LunchBox] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LunchBox] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LunchBox] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LunchBox] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LunchBox] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LunchBox] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LunchBox] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LunchBox] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LunchBox] SET  READ_WRITE 
GO
ALTER DATABASE [LunchBox] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LunchBox] SET  MULTI_USER 
GO
ALTER DATABASE [LunchBox] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LunchBox] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LunchBox] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LunchBox]
GO
IF NOT EXISTS (SELECT name FROM sys.filegroups WHERE is_default=1 AND name = N'PRIMARY') ALTER DATABASE [LunchBox] MODIFY FILEGROUP [PRIMARY] DEFAULT
GO

USE [LunchBox]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[price] [int] NOT NULL,
	[category] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (1, N'排骨飯', 60, N'米飯')
INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (2, N'排骨麵', 65, N'麵線')
INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (3, N'豬排飯', 70, N'米飯')
INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (4, N'雞腿飯', 70, N'米飯')
INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (5, N'陽春麵', 35, N'麵線')
INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (6, N'肉燥飯', 35, N'米飯')
INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (7, N'蛋炒飯', 50, N'米飯')
INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (8, N'肉燥麵', 35, N'麵線')
INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (9, N'排骨湯', 50, N'湯水')
INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (10, N'蛋花湯', 30, N'湯水')
INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (11, N'火雞肉飯', 60, N'米飯')
INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (12, N'酸辣湯', 30, N'湯水')
INSERT [dbo].[Product] ([id], [name], [price], [category]) VALUES (13, N'蛤蠣湯', 30, N'湯水')
SET IDENTITY_INSERT [dbo].[Product] OFF
