USE [TicketManagement]
GO
ALTER TABLE [dbo].[Show] DROP CONSTRAINT [FK__Show__TimeID__2A4B4B5E]
GO
ALTER TABLE [dbo].[Show] DROP CONSTRAINT [FK__Show__MovieID__2B3F6F97]
GO
ALTER TABLE [dbo].[Booking_Seat] DROP CONSTRAINT [FK__Booking_S__SeatI__33D4B598]
GO
ALTER TABLE [dbo].[Booking_Seat] DROP CONSTRAINT [FK__Booking_S__Booki__32E0915F]
GO
ALTER TABLE [dbo].[Booking] DROP CONSTRAINT [FK__Booking__ShowID__30F848ED]
GO
ALTER TABLE [dbo].[Booking] DROP CONSTRAINT [FK__Booking__Locatio__300424B4]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 25-10-2021 18:07:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Time]') AND type in (N'U'))
DROP TABLE [dbo].[Time]
GO
/****** Object:  Table [dbo].[Show]    Script Date: 25-10-2021 18:07:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Show]') AND type in (N'U'))
DROP TABLE [dbo].[Show]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 25-10-2021 18:07:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seat]') AND type in (N'U'))
DROP TABLE [dbo].[Seat]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 25-10-2021 18:07:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Movie]') AND type in (N'U'))
DROP TABLE [dbo].[Movie]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 25-10-2021 18:07:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Location]') AND type in (N'U'))
DROP TABLE [dbo].[Location]
GO
/****** Object:  Table [dbo].[Booking_Seat]    Script Date: 25-10-2021 18:07:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Booking_Seat]') AND type in (N'U'))
DROP TABLE [dbo].[Booking_Seat]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 25-10-2021 18:07:43 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Booking]') AND type in (N'U'))
DROP TABLE [dbo].[Booking]
GO
/****** Object:  Table [dbo].[Booking]    Script Date: 25-10-2021 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking](
	[ID] [int] IDENTITY(10000,1) NOT NULL,
	[Date] [date] NULL,
	[LocationID] [int] NULL,
	[ShowID] [int] NULL,
	[No_Of_Seats] [int] NULL,
	[Total_Amount] [money] NULL,
	[Cancelled] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Booking_Seat]    Script Date: 25-10-2021 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Booking_Seat](
	[BookingID] [int] NULL,
	[SeatID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 25-10-2021 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[ID] [int] IDENTITY(100,1) NOT NULL,
	[Name] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movie]    Script Date: 25-10-2021 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movie](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 25-10-2021 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Row_No] [char](1) NULL,
	[Column_no] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Show]    Script Date: 25-10-2021 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Show](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TimeID] [int] NULL,
	[MovieID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 25-10-2021 18:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ShowTime] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([LocationID])
REFERENCES [dbo].[Location] ([ID])
GO
ALTER TABLE [dbo].[Booking]  WITH CHECK ADD FOREIGN KEY([ShowID])
REFERENCES [dbo].[Show] ([ID])
GO
ALTER TABLE [dbo].[Booking_Seat]  WITH CHECK ADD FOREIGN KEY([BookingID])
REFERENCES [dbo].[Booking] ([ID])
GO
ALTER TABLE [dbo].[Booking_Seat]  WITH CHECK ADD FOREIGN KEY([SeatID])
REFERENCES [dbo].[Seat] ([ID])
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD FOREIGN KEY([MovieID])
REFERENCES [dbo].[Movie] ([ID])
GO
ALTER TABLE [dbo].[Show]  WITH CHECK ADD FOREIGN KEY([TimeID])
REFERENCES [dbo].[Time] ([ID])
GO
