USE [master]
GO
/****** Object:  Database [WickedBanana]    Script Date: 8/9/2017 4:28:12 PM ******/
CREATE DATABASE [WickedBanana]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WickedBanana', FILENAME = N'C:\Users\epicodus\WickedBanana.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WickedBanana_log', FILENAME = N'C:\Users\epicodus\WickedBanana_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WickedBanana] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WickedBanana].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WickedBanana] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WickedBanana] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WickedBanana] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WickedBanana] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WickedBanana] SET ARITHABORT OFF 
GO
ALTER DATABASE [WickedBanana] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [WickedBanana] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WickedBanana] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WickedBanana] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WickedBanana] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WickedBanana] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WickedBanana] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WickedBanana] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WickedBanana] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WickedBanana] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WickedBanana] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WickedBanana] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WickedBanana] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WickedBanana] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WickedBanana] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WickedBanana] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WickedBanana] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WickedBanana] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WickedBanana] SET  MULTI_USER 
GO
ALTER DATABASE [WickedBanana] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WickedBanana] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WickedBanana] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WickedBanana] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WickedBanana] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WickedBanana] SET QUERY_STORE = OFF
GO
USE [WickedBanana]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [WickedBanana]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 8/9/2017 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 8/9/2017 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 8/9/2017 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 8/9/2017 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 8/9/2017 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 8/9/2017 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 8/9/2017 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 8/9/2017 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BananaItems]    Script Date: 8/9/2017 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BananaItems](
	[BananaId] [int] NOT NULL,
	[ItemId] [int] NOT NULL,
 CONSTRAINT [PK_BananaItems] PRIMARY KEY CLUSTERED 
(
	[BananaId] ASC,
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Bananas]    Script Date: 8/9/2017 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bananas](
	[BananaId] [int] IDENTITY(1,1) NOT NULL,
	[AttackDamage] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Length] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Bananas] PRIMARY KEY CLUSTERED 
(
	[BananaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Foes]    Script Date: 8/9/2017 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Foes](
	[FoeId] [int] IDENTITY(1,1) NOT NULL,
	[AttackDamage] [int] NOT NULL,
	[HitPoints] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Foes] PRIMARY KEY CLUSTERED 
(
	[FoeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Items]    Script Date: 8/9/2017 4:28:12 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemId] [int] IDENTITY(1,1) NOT NULL,
	[Attack] [int] NOT NULL,
	[Defense] [int] NOT NULL,
	[FoeId] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170809170637_Initial', N'1.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170809174712_AddDefaultValues', N'1.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20170809221239_AddManyToManyRelationship', N'1.0.1')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'bdacf858-ce0a-4bae-9d49-efe1aded86f9', 0, N'bf283cba-d19b-4c0e-9d90-d0cc75575762', NULL, 0, 1, NULL, NULL, N'JOHN', N'AQAAAAEAACcQAAAAEG+tWoZ61LoWHqkeAmzozzIaZRxBnioOqs7n2R2gE3XiW1+GoDf8nXlF5+enCSYkqQ==', NULL, 0, N'10357433-12eb-4c14-a4e3-79e34dd3b994', 0, N'john')
INSERT [dbo].[AspNetUsers] ([Id], [AccessFailedCount], [ConcurrencyStamp], [Email], [EmailConfirmed], [LockoutEnabled], [LockoutEnd], [NormalizedEmail], [NormalizedUserName], [PasswordHash], [PhoneNumber], [PhoneNumberConfirmed], [SecurityStamp], [TwoFactorEnabled], [UserName]) VALUES (N'c134a2be-c12d-4ad0-87b3-ccb68bb0edcf', 0, N'9ae79756-887b-4505-84b7-184907f085bc', NULL, 0, 1, NULL, NULL, N'ANA@ANA.COM', N'AQAAAAEAACcQAAAAEDDlaKwLLkzK7g8Qz8DLlPG5nAfL/pIS1NCydrAyHI+zkj0fQgWovgz6sbYIxLShyA==', NULL, 0, N'ce57be6e-78fd-4d30-97e5-d6140e47df63', 0, N'ana@ana.com')
SET IDENTITY_INSERT [dbo].[Bananas] ON 

INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (3, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'John')
INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (4, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'kimlan')
INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (5, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'Jun')
INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (6, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'Jun')
INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (7, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'Jun')
INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (8, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'David')
INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (9, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'David')
INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (10, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'Alyssa')
INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (11, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'Pete')
INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (12, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'Pete')
INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (13, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'Nana Banana')
INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (14, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'Julian')
INSERT [dbo].[Bananas] ([BananaId], [AttackDamage], [Image], [Length], [Name]) VALUES (15, 100, N'https://i.ytimg.com/vi/pUbNLu98y8c/maxresdefault.jpg', 100, N'Corey')
SET IDENTITY_INSERT [dbo].[Bananas] OFF
SET IDENTITY_INSERT [dbo].[Foes] ON 

INSERT [dbo].[Foes] ([FoeId], [AttackDamage], [HitPoints], [Image], [Name]) VALUES (1, 10, 400, N'https://image.flaticon.com/icons/svg/136/136273.svg', N'Big Fat Baby')
INSERT [dbo].[Foes] ([FoeId], [AttackDamage], [HitPoints], [Image], [Name]) VALUES (2, 25, 1000, N'https://image.flaticon.com/icons/svg/188/188522.svg', N'Trader Joe')
INSERT [dbo].[Foes] ([FoeId], [AttackDamage], [HitPoints], [Image], [Name]) VALUES (3, 50, 1100, N'https://image.flaticon.com/icons/svg/375/375058.svg', N'Monkey MoJo')
SET IDENTITY_INSERT [dbo].[Foes] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([ItemId], [Attack], [Defense], [FoeId], [Image], [Name], [Type]) VALUES (1, 20, 1, NULL, N'https://image.flaticon.com/icons/svg/361/361805.svg', N'Sword', N'Weapon')
INSERT [dbo].[Items] ([ItemId], [Attack], [Defense], [FoeId], [Image], [Name], [Type]) VALUES (2, 1, 15, NULL, N'https://image.flaticon.com/icons/svg/139/139776.svg', N'Shield', N'Weapon')
INSERT [dbo].[Items] ([ItemId], [Attack], [Defense], [FoeId], [Image], [Name], [Type]) VALUES (3, 0, 10, NULL, N'https://image.flaticon.com/icons/svg/481/481253.svg', N'Construction Helmet', N'Armor')
INSERT [dbo].[Items] ([ItemId], [Attack], [Defense], [FoeId], [Image], [Name], [Type]) VALUES (4, 0, 15, NULL, N'https://image.flaticon.com/icons/svg/486/486555.svg', N'Body Armor', N'Armor')
INSERT [dbo].[Items] ([ItemId], [Attack], [Defense], [FoeId], [Image], [Name], [Type]) VALUES (5, 25, 0, NULL, N'https://image.flaticon.com/icons/svg/488/488518.svg', N'Revolver Pistol', N'Weapon')
INSERT [dbo].[Items] ([ItemId], [Attack], [Defense], [FoeId], [Image], [Name], [Type]) VALUES (6, 5, 7, NULL, N'https://image.flaticon.com/icons/svg/107/107532.svg', N'High Heel', N'Armor')
INSERT [dbo].[Items] ([ItemId], [Attack], [Defense], [FoeId], [Image], [Name], [Type]) VALUES (7, 100, 0, NULL, N'https://image.flaticon.com/icons/svg/238/238564.svg', N'Grenade', N'Weapon')
SET IDENTITY_INSERT [dbo].[Items] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 8/9/2017 4:28:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 8/9/2017 4:28:12 PM ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 8/9/2017 4:28:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 8/9/2017 4:28:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 8/9/2017 4:28:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_UserId]    Script Date: 8/9/2017 4:28:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 8/9/2017 4:28:12 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 8/9/2017 4:28:12 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BananaItems_BananaId]    Script Date: 8/9/2017 4:28:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_BananaItems_BananaId] ON [dbo].[BananaItems]
(
	[BananaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BananaItems_ItemId]    Script Date: 8/9/2017 4:28:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_BananaItems_ItemId] ON [dbo].[BananaItems]
(
	[ItemId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Items_FoeId]    Script Date: 8/9/2017 4:28:12 PM ******/
CREATE NONCLUSTERED INDEX [IX_Items_FoeId] ON [dbo].[Items]
(
	[FoeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[BananaItems]  WITH CHECK ADD  CONSTRAINT [FK_BananaItems_Bananas_BananaId] FOREIGN KEY([BananaId])
REFERENCES [dbo].[Bananas] ([BananaId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BananaItems] CHECK CONSTRAINT [FK_BananaItems_Bananas_BananaId]
GO
ALTER TABLE [dbo].[BananaItems]  WITH CHECK ADD  CONSTRAINT [FK_BananaItems_Items_ItemId] FOREIGN KEY([ItemId])
REFERENCES [dbo].[Items] ([ItemId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BananaItems] CHECK CONSTRAINT [FK_BananaItems_Items_ItemId]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Foes_FoeId] FOREIGN KEY([FoeId])
REFERENCES [dbo].[Foes] ([FoeId])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Foes_FoeId]
GO
USE [master]
GO
ALTER DATABASE [WickedBanana] SET  READ_WRITE 
GO
