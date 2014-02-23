
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 02/22/2014 20:07:59
-- Generated from EDMX file: D:\semester7\EAD(Dot NET)\Term Project\MyWeb\MyWeb\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [temp];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Comments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Comments];
GO
IF OBJECT_ID(N'[dbo].[Events]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Events];
GO
IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Comments'
CREATE TABLE [dbo].[Comments] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserName] varchar(50)  NULL,
    [performance] varchar(50)  NULL,
    [comment1] varchar(max)  NULL
);
GO

-- Creating table 'Events'
CREATE TABLE [dbo].[Events] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [username] varchar(50)  NOT NULL,
    [Post] varchar(max)  NOT NULL,
    [date] varchar(50)  NOT NULL,
    [NumberOfLikes] int  NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [username] varchar(50)  NOT NULL,
    [FullName] varchar(50)  NOT NULL,
    [Password] varchar(50)  NOT NULL,
    [Email] varchar(50)  NOT NULL,
    [Cell] varchar(50)  NOT NULL,
    [Blood] varchar(50)  NOT NULL,
    [Type] nchar(10)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Comments'
ALTER TABLE [dbo].[Comments]
ADD CONSTRAINT [PK_Comments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Events'
ALTER TABLE [dbo].[Events]
ADD CONSTRAINT [PK_Events]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------