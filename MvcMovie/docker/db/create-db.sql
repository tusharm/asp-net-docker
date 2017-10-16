﻿USE [master]
GO

CREATE DATABASE [Movies]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Movies', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Movies.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 5120KB )
 LOG ON 
( NAME = N'Movies_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Movies_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 5120KB )
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Movies].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [Movies] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [Movies] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [Movies] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [Movies] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [Movies] SET ARITHABORT OFF 
GO

ALTER DATABASE [Movies] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [Movies] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [Movies] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [Movies] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [Movies] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [Movies] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [Movies] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [Movies] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [Movies] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [Movies] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [Movies] SET  DISABLE_BROKER 
GO

ALTER DATABASE [Movies] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [Movies] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [Movies] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [Movies] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [Movies] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [Movies] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [Movies] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [Movies] SET RECOVERY FULL 
GO

ALTER DATABASE [Movies] SET  MULTI_USER 
GO

ALTER DATABASE [Movies] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [Movies] SET DB_CHAINING OFF 
GO

ALTER DATABASE [Movies] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [Movies] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [Movies] SET  READ_WRITE 
GO



USE [Movies]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Movies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[Genre] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Movies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


