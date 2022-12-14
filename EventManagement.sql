USE [master]
GO
/****** Object:  Database [EventManagement]    Script Date: 11/17/2022 11:12:47 AM ******/
CREATE DATABASE [EventManagement]
GO
ALTER DATABASE [EventManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [EventManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [EventManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [EventManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [EventManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [EventManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [EventManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [EventManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [EventManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [EventManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [EventManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [EventManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [EventManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [EventManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [EventManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [EventManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [EventManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [EventManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [EventManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [EventManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [EventManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [EventManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [EventManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [EventManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [EventManagement] SET RECOVERY FULL 
GO
ALTER DATABASE [EventManagement] SET  MULTI_USER 
GO
ALTER DATABASE [EventManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [EventManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [EventManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [EventManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [EventManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [EventManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'EventManagement', N'ON'
GO
ALTER DATABASE [EventManagement] SET QUERY_STORE = OFF
GO
USE [EventManagement]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 11/17/2022 11:12:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCategory](
	[CategoryId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblComment]    Script Date: 11/17/2022 11:12:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblComment](
	[CommentId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[Content] [nvarchar](500) NOT NULL,
	[Status] [bit] NULL,
	[IsParent] [bit] NULL,
	[ParentId] [uniqueidentifier] NULL,
	[EventId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblComment] PRIMARY KEY CLUSTERED 
(
	[CommentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEvent]    Script Date: 11/17/2022 11:12:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEvent](
	[EventId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](500) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[StartDate] [datetime2](7) NOT NULL,
	[EndDate] [datetime2](7) NOT NULL,
	[VenueId] [uniqueidentifier] NOT NULL,
	[Status] [bit] NOT NULL,
	[CanComment] [bit] NOT NULL,
	[CategoryId] [uniqueidentifier] NOT NULL,
	[Capacity] [int] NOT NULL,
 CONSTRAINT [PK_tblEvent] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblEventLike]    Script Date: 11/17/2022 11:12:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblEventLike](
	[EventId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Status] [bit] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_tblEventLike] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReport]    Script Date: 11/17/2022 11:12:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReport](
	[ReportId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Content] [nvarchar](500) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[EventId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_tblReport] PRIMARY KEY CLUSTERED 
(
	[ReportId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 11/17/2022 11:12:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserId] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Password] [nvarchar](30) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Avatar] [nvarchar](max) NULL,
	[IsBlocked] [bit] NOT NULL,
	[Role] [int] NOT NULL,
	[IsGoogleAuthenticate] [bit] NOT NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUserEvent]    Script Date: 11/17/2022 11:12:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUserEvent](
	[UserId] [uniqueidentifier] NOT NULL,
	[EventId] [uniqueidentifier] NOT NULL,
	[IsHost] [bit] NOT NULL,
 CONSTRAINT [PK_tblUserEvent] PRIMARY KEY CLUSTERED 
(
	[EventId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVenue]    Script Date: 11/17/2022 11:12:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVenue](
	[VenueId] [uniqueidentifier] NOT NULL,
	[VenueName] [nvarchar](100) NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_tblVenue] PRIMARY KEY CLUSTERED 
(
	[VenueId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[tblCategory] ([CategoryId], [Name], [Status]) VALUES (N'd986cc26-7e36-42c1-b0b6-11fd758ec99a', N'Food', 1)
INSERT [dbo].[tblCategory] ([CategoryId], [Name], [Status]) VALUES (N'd1953a02-8ca7-43f9-8e96-36f3a22bd5b5', N'Game', 1)
INSERT [dbo].[tblCategory] ([CategoryId], [Name], [Status]) VALUES (N'5a483e51-caf6-4e57-9168-427d05c84650', N'Concert', 1)
INSERT [dbo].[tblCategory] ([CategoryId], [Name], [Status]) VALUES (N'6f23ec16-f836-4d23-bd34-81b2243a2118', N'Other', 1)
INSERT [dbo].[tblCategory] ([CategoryId], [Name], [Status]) VALUES (N'917876fb-2cb6-4a43-ad78-a403d9562219', N'Education', 1)
INSERT [dbo].[tblCategory] ([CategoryId], [Name], [Status]) VALUES (N'44f77e52-d44b-4071-8bbb-acf3ff846829', N'Party', 1)
INSERT [dbo].[tblCategory] ([CategoryId], [Name], [Status]) VALUES (N'afcafae1-3394-4735-98f5-d17e7523b5ea', N'Sport', 1)
GO
INSERT [dbo].[tblComment] ([CommentId], [UserId], [CreateDate], [Content], [Status], [IsParent], [ParentId], [EventId]) VALUES (N'5dcb6f5e-2492-4794-aa8e-a7f81f1e96c6', N'd210eb2f-a4f9-4c62-a2c1-1fc05b633296', CAST(N'2022-11-17T11:03:56.0652214' AS DateTime2), N'hi', 1, 1, NULL, N'c51fc734-da6a-4b8e-b286-45615e274301')
INSERT [dbo].[tblComment] ([CommentId], [UserId], [CreateDate], [Content], [Status], [IsParent], [ParentId], [EventId]) VALUES (N'937bfa93-0443-4720-bb66-aa42b9be4b9f', N'61b1452f-7b2d-4d10-a2c5-f5cdeb4e020c', CAST(N'2022-11-17T10:42:11.4881195' AS DateTime2), N'hhello', 1, 1, NULL, N'6b2d5511-d1b8-4839-8445-4c3d42e8c308')
INSERT [dbo].[tblComment] ([CommentId], [UserId], [CreateDate], [Content], [Status], [IsParent], [ParentId], [EventId]) VALUES (N'1fe4953f-e8df-4678-8242-c196e8d44ff0', N'7be9d58d-609f-46e8-ae75-17e7f17ff075', CAST(N'2022-11-17T11:03:27.1885533' AS DateTime2), N'hi', 1, 1, NULL, N'6b2d5511-d1b8-4839-8445-4c3d42e8c308')
INSERT [dbo].[tblComment] ([CommentId], [UserId], [CreateDate], [Content], [Status], [IsParent], [ParentId], [EventId]) VALUES (N'a7f4f59a-ac4a-4627-93a9-d96f194524c2', N'44828592-2a10-41a1-a539-3319e6eb1fce', CAST(N'2022-07-12T22:12:06.1134596' AS DateTime2), N'Nice event', 1, 1, NULL, N'c51fc734-da6a-4b8e-b286-45615e274301')
INSERT [dbo].[tblComment] ([CommentId], [UserId], [CreateDate], [Content], [Status], [IsParent], [ParentId], [EventId]) VALUES (N'def96cf0-6291-4217-aaf5-e9d2a0183520', N'7be9d58d-609f-46e8-ae75-17e7f17ff075', CAST(N'2022-07-12T21:59:51.8596429' AS DateTime2), N'Very enjoyable', 1, 1, NULL, N'c51fc734-da6a-4b8e-b286-45615e274301')
GO
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'2399dfcc-fed2-40b9-9a6d-10649fa6c9f9', N'FTI Event', N'Traditional Music', N'Forum_banner_a-03.jpg', CAST(N'2021-09-19T13:59:38.0000000' AS DateTime2), CAST(N'2021-12-02T10:57:09.0000000' AS DateTime2), CAST(N'2022-05-06T10:27:51.0000000' AS DateTime2), N'6ba89784-6492-435d-8bcd-19210631fb98', 0, 0, N'6f23ec16-f836-4d23-bd34-81b2243a2118', 131)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'188cfbf4-03f9-4fb6-904d-197b32fb3cf7', N'ESC Event', N'Gaming Club For FPTU Students', N'esc-event.jpg', CAST(N'2022-04-19T05:59:18.0000000' AS DateTime2), CAST(N'2022-09-23T23:15:45.0000000' AS DateTime2), CAST(N'2022-10-18T14:48:00.0000000' AS DateTime2), N'68244d6d-5dbb-4878-b1a9-e71ce075eaac', 0, 0, N'5a483e51-caf6-4e57-9168-427d05c84650', 31)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'0c268cd2-0f6f-4cf4-b96d-216580184c23', N'Mac-Lenin Seminar', N'Philosophy Talk', N'mac-lenin.jpg', CAST(N'2022-08-17T15:43:53.0000000' AS DateTime2), CAST(N'2022-07-30T13:22:35.0000000' AS DateTime2), CAST(N'2022-08-02T06:11:06.0000000' AS DateTime2), N'2244db3f-73a7-4fac-86cd-46a14e723637', 1, 0, N'd1953a02-8ca7-43f9-8e96-36f3a22bd5b5', 294)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'2c78cb37-2f7d-4222-8490-2f4e489234ff', N'3D Unity Seminar', N'3D Unity Game', N'Unity-Event-Banner-1.png', CAST(N'2021-10-31T16:27:16.0000000' AS DateTime2), CAST(N'2022-11-18T06:54:48.0000000' AS DateTime2), CAST(N'2022-11-26T00:05:37.0000000' AS DateTime2), N'2244db3f-73a7-4fac-86cd-46a14e723637', 0, 1, N'd986cc26-7e36-42c1-b0b6-11fd758ec99a', 247)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'c51fc734-da6a-4b8e-b286-45615e274301', N'Music Festival', N'Music Festival', N'photo-1506157786151-b8491531f063-o67khcrf12brm2ujwi7ich9sdbmvk3981l8ymty3k8.jpeg', CAST(N'2022-07-12T02:58:59.1470000' AS DateTime2), CAST(N'2022-11-18T05:58:00.0000000' AS DateTime2), CAST(N'2022-11-26T02:58:00.0000000' AS DateTime2), N'6ba89784-6492-435d-8bcd-19210631fb98', 1, 1, N'd986cc26-7e36-42c1-b0b6-11fd758ec99a', 5)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'86032721-614d-4541-a2b3-45e408927c4e', N'Halloween Event', N'Happy Halloween', N'4257712.jpg', CAST(N'2022-08-16T09:56:53.0000000' AS DateTime2), CAST(N'2021-02-04T11:46:09.0000000' AS DateTime2), CAST(N'2022-12-19T13:57:56.0000000' AS DateTime2), N'0115dfbf-ba62-4a5c-b8f2-eb5c10665dcb', 1, 1, N'44f77e52-d44b-4071-8bbb-acf3ff846829', 105)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'f0f46854-30a4-4b7d-84cb-487ca59be8d7', N'Teacher Day', N'Event For Teacher And Student', N'5826442.jpg', CAST(N'2021-11-29T18:40:56.0000000' AS DateTime2), CAST(N'2021-11-07T04:19:15.0000000' AS DateTime2), CAST(N'2021-12-30T08:28:22.0000000' AS DateTime2), N'2244db3f-73a7-4fac-86cd-46a14e723637', 1, 0, N'd1953a02-8ca7-43f9-8e96-36f3a22bd5b5', 53)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'6b2d5511-d1b8-4839-8445-4c3d42e8c308', N'Spring Festival', N'Student Cosplay Event', N'6511652.jpg', CAST(N'2021-12-11T15:06:41.0000000' AS DateTime2), CAST(N'2022-07-10T21:08:08.0000000' AS DateTime2), CAST(N'2022-07-12T23:56:59.0000000' AS DateTime2), N'b15ea6f7-37e3-47a3-a1af-79abc78ad9b7', 1, 1, N'5a483e51-caf6-4e57-9168-427d05c84650', 82)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'5c12aa0d-7688-4544-85dc-6a3a533244e2', N'Summer Festival', N'Student Talent Show', N'2587253.jpg', CAST(N'2021-11-26T20:28:22.0000000' AS DateTime2), CAST(N'2022-03-24T20:58:26.0000000' AS DateTime2), CAST(N'2022-04-10T04:18:13.0000000' AS DateTime2), N'68244d6d-5dbb-4878-b1a9-e71ce075eaac', 0, 0, N'afcafae1-3394-4735-98f5-d17e7523b5ea', 711)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'a020c4f4-935c-494c-be80-6a5004116e95', N'Fall Festival', N'Hackathon', N'sl_080422_52180_59.jpg', CAST(N'2022-09-09T15:49:44.0000000' AS DateTime2), CAST(N'2021-07-01T07:43:42.0000000' AS DateTime2), CAST(N'2022-10-02T11:11:11.0000000' AS DateTime2), N'6ba89784-6492-435d-8bcd-19210631fb98', 1, 0, N'6f23ec16-f836-4d23-bd34-81b2243a2118', 651)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'e212450c-df81-4b66-93eb-7687eff4272e', N'Winter Festival', N'Book Day', N'http://dummyimage.com/156x100.png/5fa2dd/ffffff', CAST(N'2022-07-18T02:20:40.0000000' AS DateTime2), CAST(N'2021-08-07T15:44:05.0000000' AS DateTime2), CAST(N'2022-06-26T07:17:09.0000000' AS DateTime2), N'0115dfbf-ba62-4a5c-b8f2-eb5c10665dcb', 0, 0, N'44f77e52-d44b-4071-8bbb-acf3ff846829', 42)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'2a11b242-086c-49c1-b2a1-78dfda27f759', N'Woman Day', N'Happy Woman Day', N'http://dummyimage.com/194x100.png/5fa2dd/ffffff', CAST(N'2022-02-25T05:25:00.0000000' AS DateTime2), CAST(N'2022-04-26T08:47:25.0000000' AS DateTime2), CAST(N'2021-12-03T10:09:23.0000000' AS DateTime2), N'b15ea6f7-37e3-47a3-a1af-79abc78ad9b7', 0, 0, N'6f23ec16-f836-4d23-bd34-81b2243a2118', 132)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'e3fdeadb-720d-4fba-ab96-8778c9806c88', N'Lunar New Year', N'New Year Music Festival', N'6534461.jpg', CAST(N'2022-10-13T18:21:21.0000000' AS DateTime2), CAST(N'2022-01-18T14:50:29.0000000' AS DateTime2), CAST(N'2022-12-30T14:30:57.0000000' AS DateTime2), N'0115dfbf-ba62-4a5c-b8f2-eb5c10665dcb', 1, 0, N'6f23ec16-f836-4d23-bd34-81b2243a2118', 733)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'23d5428e-773e-4d05-be0d-8c602fd11d2c', N'FBG Event', N'Board Game Event', N'http://dummyimage.com/142x100.png/cc0000/ffffff', CAST(N'2022-07-08T11:46:49.0000000' AS DateTime2), CAST(N'2022-06-18T23:41:46.0000000' AS DateTime2), CAST(N'2021-10-13T18:48:19.0000000' AS DateTime2), N'2244db3f-73a7-4fac-86cd-46a14e723637', 0, 1, N'44f77e52-d44b-4071-8bbb-acf3ff846829', 762)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'65b56433-31e8-4383-90be-9b75ec700f31', N'FCC Event', N'Chess Club Event', N'jaslklvdv.jpg', CAST(N'2021-12-25T19:41:17.0000000' AS DateTime2), CAST(N'2021-11-25T18:38:54.0000000' AS DateTime2), CAST(N'2022-02-25T20:40:08.0000000' AS DateTime2), N'0115dfbf-ba62-4a5c-b8f2-eb5c10665dcb', 1, 1, N'd986cc26-7e36-42c1-b0b6-11fd758ec99a', 270)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'e20cd82d-dc58-4001-8586-bed64163955a', N'FMU Event', N'Music Night', N'http://dummyimage.com/142x100.png/cc0000/ffffff', CAST(N'2022-04-26T06:24:32.0000000' AS DateTime2), CAST(N'2021-07-04T13:26:41.0000000' AS DateTime2), CAST(N'2022-06-19T08:52:22.0000000' AS DateTime2), N'b15ea6f7-37e3-47a3-a1af-79abc78ad9b7', 0, 0, N'917876fb-2cb6-4a43-ad78-a403d9562219', 452)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'ff14bf40-ca8c-4ed8-bb5b-cb66c45166d2', N'FVC Event', N'Vovinam show', N'http://dummyimage.com/195x100.png/ff4444/ffffff', CAST(N'2021-11-19T17:11:53.0000000' AS DateTime2), CAST(N'2021-09-29T10:24:04.0000000' AS DateTime2), CAST(N'2021-12-17T08:39:27.0000000' AS DateTime2), N'6ba89784-6492-435d-8bcd-19210631fb98', 0, 0, N'6f23ec16-f836-4d23-bd34-81b2243a2118', 175)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'2445464f-b116-44e3-8a58-cbf7aa161b1c', N'FMC Event', N'Movie Night', N'hoat-dong-activation-va-event-co-gi-khac-nhau-804176.jpg', CAST(N'2022-01-26T03:43:32.0000000' AS DateTime2), CAST(N'2022-11-01T18:50:45.0000000' AS DateTime2), CAST(N'2022-12-01T01:15:09.0000000' AS DateTime2), N'b15ea6f7-37e3-47a3-a1af-79abc78ad9b7', 1, 1, N'd1953a02-8ca7-43f9-8e96-36f3a22bd5b5', 484)
INSERT [dbo].[tblEvent] ([EventId], [Name], [Description], [ImageUrl], [CreateDate], [StartDate], [EndDate], [VenueId], [Status], [CanComment], [CategoryId], [Capacity]) VALUES (N'28371d97-d769-4284-9230-f01481411900', N'JSC Event', N'Cosplay Night', N'http://dummyimage.com/210x100.png/dddddd/000000', CAST(N'2021-09-23T05:27:44.0000000' AS DateTime2), CAST(N'2021-11-29T00:30:54.0000000' AS DateTime2), CAST(N'2022-03-12T04:54:14.0000000' AS DateTime2), N'6ba89784-6492-435d-8bcd-19210631fb98', 0, 0, N'd1953a02-8ca7-43f9-8e96-36f3a22bd5b5', 910)
GO
INSERT [dbo].[tblEventLike] ([EventId], [UserId], [Status], [CreateDate]) VALUES (N'0c268cd2-0f6f-4cf4-b96d-216580184c23', N'7be9d58d-609f-46e8-ae75-17e7f17ff075', 1, CAST(N'2022-11-14T10:15:50.4409325' AS DateTime2))
INSERT [dbo].[tblEventLike] ([EventId], [UserId], [Status], [CreateDate]) VALUES (N'0c268cd2-0f6f-4cf4-b96d-216580184c23', N'61b1452f-7b2d-4d10-a2c5-f5cdeb4e020c', 1, CAST(N'2022-07-18T02:01:15.9904423' AS DateTime2))
INSERT [dbo].[tblEventLike] ([EventId], [UserId], [Status], [CreateDate]) VALUES (N'c51fc734-da6a-4b8e-b286-45615e274301', N'7be9d58d-609f-46e8-ae75-17e7f17ff075', 1, CAST(N'2022-11-17T10:38:29.6398623' AS DateTime2))
INSERT [dbo].[tblEventLike] ([EventId], [UserId], [Status], [CreateDate]) VALUES (N'c51fc734-da6a-4b8e-b286-45615e274301', N'44828592-2a10-41a1-a539-3319e6eb1fce', 1, CAST(N'2022-07-13T22:01:16.0607884' AS DateTime2))
INSERT [dbo].[tblEventLike] ([EventId], [UserId], [Status], [CreateDate]) VALUES (N'e3fdeadb-720d-4fba-ab96-8778c9806c88', N'd210eb2f-a4f9-4c62-a2c1-1fc05b633296', 1, CAST(N'2022-11-17T10:33:30.3168691' AS DateTime2))
GO
INSERT [dbo].[tblReport] ([ReportId], [Name], [Content], [CreateDate], [Status], [UserId], [EventId]) VALUES (N'931516d4-a999-408a-b5d5-7c55be8aa1ac', N'Event not suitable for students', N'Event not suitable for students', CAST(N'2022-07-13T22:07:31.6467190' AS DateTime2), 3, N'44828592-2a10-41a1-a539-3319e6eb1fce', N'c51fc734-da6a-4b8e-b286-45615e274301')
GO
INSERT [dbo].[tblUser] ([UserId], [Name], [Email], [Password], [PhoneNumber], [Avatar], [IsBlocked], [Role], [IsGoogleAuthenticate]) VALUES (N'7be9d58d-609f-46e8-ae75-17e7f17ff075', N'Khanh Duy', N'test5@fpt.edu.vn', N'12345', N'0123456789', N'https://lh3.googleusercontent.com/a-/AFdZucrecNiHFcmdlI1CPfh55pxGPj3WLlmdRU7Dc1ti4UA=s96-c', 0, 1, 0)
INSERT [dbo].[tblUser] ([UserId], [Name], [Email], [Password], [PhoneNumber], [Avatar], [IsBlocked], [Role], [IsGoogleAuthenticate]) VALUES (N'd210eb2f-a4f9-4c62-a2c1-1fc05b633296', N'Ton Minh', N'minhttpnse150907@fpt.edu.vn', N'12345', N'0123456789', N'https://lh3.googleusercontent.com/a-/AFdZucrecNiHFcmdlI1CPfh55pxGPj3WLlmdRU7Dc1ti4UA=s96-c', 0, 2, 0)
INSERT [dbo].[tblUser] ([UserId], [Name], [Email], [Password], [PhoneNumber], [Avatar], [IsBlocked], [Role], [IsGoogleAuthenticate]) VALUES (N'44828592-2a10-41a1-a539-3319e6eb1fce', N'Thuy Linh', N'dungnse151271@fpt.edu.vn', N'12345', N'0123456789', N'https://lh3.googleusercontent.com/a-/AFdZucrecNiHFcmdlI1CPfh55pxGPj3WLlmdRU7Dc1ti4UA=s96-c', 0, 1, 1)
INSERT [dbo].[tblUser] ([UserId], [Name], [Email], [Password], [PhoneNumber], [Avatar], [IsBlocked], [Role], [IsGoogleAuthenticate]) VALUES (N'eb685c29-58ed-4bcd-80a2-65c2ca160564', N'Khoi Nguyen', N'test2@fpt.edu.vn', N'12345', N'0123456789', N'https://lh3.googleusercontent.com/a-/AFdZucrecNiHFcmdlI1CPfh55pxGPj3WLlmdRU7Dc1ti4UA=s96-c', 0, 2, 0)
INSERT [dbo].[tblUser] ([UserId], [Name], [Email], [Password], [PhoneNumber], [Avatar], [IsBlocked], [Role], [IsGoogleAuthenticate]) VALUES (N'40a5312a-8d8c-487e-b2d5-75bf61ee7760', N'KhanhDuy1', N'test3@fpt.edu.vn', N'12345', N'0123456789', N'https://lh3.googleusercontent.com/a-/AFdZucrecNiHFcmdlI1CPfh55pxGPj3WLlmdRU7Dc1ti4UA=s96-c', 0, 2, 0)
INSERT [dbo].[tblUser] ([UserId], [Name], [Email], [Password], [PhoneNumber], [Avatar], [IsBlocked], [Role], [IsGoogleAuthenticate]) VALUES (N'61b1452f-7b2d-4d10-a2c5-f5cdeb4e020c', N'Khoi Nguyen1', N'test4@fpt.edu.vn', N'12345', N'0123456789', N'https://lh3.googleusercontent.com/a-/AFdZucrecNiHFcmdlI1CPfh55pxGPj3WLlmdRU7Dc1ti4UA=s96-c', 0, 3, 0)
GO
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'eb685c29-58ed-4bcd-80a2-65c2ca160564', N'2399dfcc-fed2-40b9-9a6d-10649fa6c9f9', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'eb685c29-58ed-4bcd-80a2-65c2ca160564', N'0c268cd2-0f6f-4cf4-b96d-216580184c23', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'd210eb2f-a4f9-4c62-a2c1-1fc05b633296', N'c51fc734-da6a-4b8e-b286-45615e274301', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'61b1452f-7b2d-4d10-a2c5-f5cdeb4e020c', N'c51fc734-da6a-4b8e-b286-45615e274301', 0)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'd210eb2f-a4f9-4c62-a2c1-1fc05b633296', N'86032721-614d-4541-a2b3-45e408927c4e', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'd210eb2f-a4f9-4c62-a2c1-1fc05b633296', N'f0f46854-30a4-4b7d-84cb-487ca59be8d7', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'40a5312a-8d8c-487e-b2d5-75bf61ee7760', N'6b2d5511-d1b8-4839-8445-4c3d42e8c308', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'40a5312a-8d8c-487e-b2d5-75bf61ee7760', N'5c12aa0d-7688-4544-85dc-6a3a533244e2', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'd210eb2f-a4f9-4c62-a2c1-1fc05b633296', N'a020c4f4-935c-494c-be80-6a5004116e95', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'd210eb2f-a4f9-4c62-a2c1-1fc05b633296', N'e212450c-df81-4b66-93eb-7687eff4272e', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'd210eb2f-a4f9-4c62-a2c1-1fc05b633296', N'2a11b242-086c-49c1-b2a1-78dfda27f759', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'd210eb2f-a4f9-4c62-a2c1-1fc05b633296', N'e3fdeadb-720d-4fba-ab96-8778c9806c88', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'eb685c29-58ed-4bcd-80a2-65c2ca160564', N'23d5428e-773e-4d05-be0d-8c602fd11d2c', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'40a5312a-8d8c-487e-b2d5-75bf61ee7760', N'65b56433-31e8-4383-90be-9b75ec700f31', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'eb685c29-58ed-4bcd-80a2-65c2ca160564', N'e20cd82d-dc58-4001-8586-bed64163955a', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'eb685c29-58ed-4bcd-80a2-65c2ca160564', N'ff14bf40-ca8c-4ed8-bb5b-cb66c45166d2', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'40a5312a-8d8c-487e-b2d5-75bf61ee7760', N'2445464f-b116-44e3-8a58-cbf7aa161b1c', 1)
INSERT [dbo].[tblUserEvent] ([UserId], [EventId], [IsHost]) VALUES (N'eb685c29-58ed-4bcd-80a2-65c2ca160564', N'28371d97-d769-4284-9230-f01481411900', 1)
GO
INSERT [dbo].[tblVenue] ([VenueId], [VenueName], [Status]) VALUES (N'6ba89784-6492-435d-8bcd-19210631fb98', N'Main Lobby', 1)
INSERT [dbo].[tblVenue] ([VenueId], [VenueName], [Status]) VALUES (N'2244db3f-73a7-4fac-86cd-46a14e723637', N'Hall B', 1)
INSERT [dbo].[tblVenue] ([VenueId], [VenueName], [Status]) VALUES (N'b15ea6f7-37e3-47a3-a1af-79abc78ad9b7', N'Side Lobby', 1)
INSERT [dbo].[tblVenue] ([VenueId], [VenueName], [Status]) VALUES (N'68244d6d-5dbb-4878-b1a9-e71ce075eaac', N'Hall C', 1)
INSERT [dbo].[tblVenue] ([VenueId], [VenueName], [Status]) VALUES (N'0115dfbf-ba62-4a5c-b8f2-eb5c10665dcb', N'Hall A', 1)
GO
ALTER TABLE [dbo].[tblComment]  WITH CHECK ADD  CONSTRAINT [FK_tblComment_tblComment_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[tblComment] ([CommentId])
GO
ALTER TABLE [dbo].[tblComment] CHECK CONSTRAINT [FK_tblComment_tblComment_ParentId]
GO
ALTER TABLE [dbo].[tblComment]  WITH CHECK ADD  CONSTRAINT [FK_tblComment_tblEvent_EventId] FOREIGN KEY([EventId])
REFERENCES [dbo].[tblEvent] ([EventId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblComment] CHECK CONSTRAINT [FK_tblComment_tblEvent_EventId]
GO
ALTER TABLE [dbo].[tblComment]  WITH CHECK ADD  CONSTRAINT [FK_tblComment_tblUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tblUser] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblComment] CHECK CONSTRAINT [FK_tblComment_tblUser_UserId]
GO
ALTER TABLE [dbo].[tblEvent]  WITH CHECK ADD  CONSTRAINT [FK_tblEvent_tblCategory_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[tblCategory] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblEvent] CHECK CONSTRAINT [FK_tblEvent_tblCategory_CategoryId]
GO
ALTER TABLE [dbo].[tblEvent]  WITH CHECK ADD  CONSTRAINT [FK_tblEvent_tblVenue_VenueId] FOREIGN KEY([VenueId])
REFERENCES [dbo].[tblVenue] ([VenueId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblEvent] CHECK CONSTRAINT [FK_tblEvent_tblVenue_VenueId]
GO
ALTER TABLE [dbo].[tblEventLike]  WITH CHECK ADD  CONSTRAINT [FK_tblEventLike_tblEvent_EventId] FOREIGN KEY([EventId])
REFERENCES [dbo].[tblEvent] ([EventId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblEventLike] CHECK CONSTRAINT [FK_tblEventLike_tblEvent_EventId]
GO
ALTER TABLE [dbo].[tblEventLike]  WITH CHECK ADD  CONSTRAINT [FK_tblEventLike_tblUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tblUser] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblEventLike] CHECK CONSTRAINT [FK_tblEventLike_tblUser_UserId]
GO
ALTER TABLE [dbo].[tblReport]  WITH CHECK ADD  CONSTRAINT [FK_tblReport_tblEvent_EventId] FOREIGN KEY([EventId])
REFERENCES [dbo].[tblEvent] ([EventId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblReport] CHECK CONSTRAINT [FK_tblReport_tblEvent_EventId]
GO
ALTER TABLE [dbo].[tblReport]  WITH CHECK ADD  CONSTRAINT [FK_tblReport_tblUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tblUser] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblReport] CHECK CONSTRAINT [FK_tblReport_tblUser_UserId]
GO
ALTER TABLE [dbo].[tblUserEvent]  WITH CHECK ADD  CONSTRAINT [FK_tblUserEvent_tblEvent_EventId] FOREIGN KEY([EventId])
REFERENCES [dbo].[tblEvent] ([EventId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblUserEvent] CHECK CONSTRAINT [FK_tblUserEvent_tblEvent_EventId]
GO
ALTER TABLE [dbo].[tblUserEvent]  WITH CHECK ADD  CONSTRAINT [FK_tblUserEvent_tblUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[tblUser] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblUserEvent] CHECK CONSTRAINT [FK_tblUserEvent_tblUser_UserId]
GO
USE [master]
GO
ALTER DATABASE [EventManagement] SET  READ_WRITE 
GO
