USE [TicketManagement]
GO
DELETE FROM [dbo].[Booking_Seat]
GO
DELETE FROM [dbo].[Seat]
GO
DELETE FROM [dbo].[Booking]
GO
DELETE FROM [dbo].[Show]
GO
DELETE FROM [dbo].[Movie]
GO
DELETE FROM [dbo].[Time]
GO
DELETE FROM [dbo].[Location]
GO
SET IDENTITY_INSERT [dbo].[Location] ON 
GO
INSERT [dbo].[Location] ([ID], [Name]) VALUES (100, N'Tambaram')
GO
INSERT [dbo].[Location] ([ID], [Name]) VALUES (101, N'Sholinganallur')
GO
INSERT [dbo].[Location] ([ID], [Name]) VALUES (102, N'Guindy')
GO
INSERT [dbo].[Location] ([ID], [Name]) VALUES (103, N'Adayar')
GO
INSERT [dbo].[Location] ([ID], [Name]) VALUES (104, N'T.Nagar')
GO
INSERT [dbo].[Location] ([ID], [Name]) VALUES (105, N'Velachery')
GO
INSERT [dbo].[Location] ([ID], [Name]) VALUES (106, N'Porur')
GO
INSERT [dbo].[Location] ([ID], [Name]) VALUES (107, N'Anna Nagar')
GO
INSERT [dbo].[Location] ([ID], [Name]) VALUES (108, N'Pallavaram')
GO
INSERT [dbo].[Location] ([ID], [Name]) VALUES (109, N'Egmore')
GO
INSERT [dbo].[Location] ([ID], [Name]) VALUES (110, N'Triplicane')
GO
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[Time] ON 
GO
INSERT [dbo].[Time] ([ID], [ShowTime]) VALUES (1, CAST(N'10:00:00' AS Time))
GO
INSERT [dbo].[Time] ([ID], [ShowTime]) VALUES (2, CAST(N'14:00:00' AS Time))
GO
INSERT [dbo].[Time] ([ID], [ShowTime]) VALUES (3, CAST(N'18:00:00' AS Time))
GO
INSERT [dbo].[Time] ([ID], [ShowTime]) VALUES (4, CAST(N'22:00:00' AS Time))
GO
SET IDENTITY_INSERT [dbo].[Time] OFF
GO
SET IDENTITY_INSERT [dbo].[Movie] ON 
GO
INSERT [dbo].[Movie] ([ID], [Name]) VALUES (1, N'Master')
GO
INSERT [dbo].[Movie] ([ID], [Name]) VALUES (2, N'Doctor')
GO
INSERT [dbo].[Movie] ([ID], [Name]) VALUES (3, N'Venom')
GO
INSERT [dbo].[Movie] ([ID], [Name]) VALUES (4, N'Kala')
GO
INSERT [dbo].[Movie] ([ID], [Name]) VALUES (5, N'Thuppaki')
GO
INSERT [dbo].[Movie] ([ID], [Name]) VALUES (6, N'VIP')
GO
INSERT [dbo].[Movie] ([ID], [Name]) VALUES (7, N'End Game')
GO
INSERT [dbo].[Movie] ([ID], [Name]) VALUES (8, N'Black Panther')
GO
INSERT [dbo].[Movie] ([ID], [Name]) VALUES (9, N'Theri')
GO
INSERT [dbo].[Movie] ([ID], [Name]) VALUES (10, N'Vikram')
GO
INSERT [dbo].[Movie] ([ID], [Name]) VALUES (11, N'Maya')
GO
SET IDENTITY_INSERT [dbo].[Movie] OFF
GO
SET IDENTITY_INSERT [dbo].[Show] ON 
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (1, 1, 1)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (2, 1, 2)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (3, 1, 3)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (4, 1, 4)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (5, 1, 5)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (6, 1, 6)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (7, 1, 7)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (8, 1, 8)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (9, 1, 9)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (10, 1, 10)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (11, 1, 11)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (12, 2, 1)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (13, 2, 2)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (14, 2, 3)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (15, 2, 4)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (16, 2, 5)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (17, 2, 6)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (18, 2, 7)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (19, 2, 8)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (20, 2, 9)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (21, 2, 10)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (22, 2, 11)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (23, 3, 1)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (24, 3, 2)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (25, 3, 3)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (26, 3, 4)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (27, 3, 5)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (28, 3, 6)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (29, 3, 7)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (30, 3, 8)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (31, 3, 9)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (32, 3, 10)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (33, 3, 11)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (34, 4, 1)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (35, 4, 2)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (36, 4, 3)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (37, 4, 4)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (38, 4, 5)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (39, 4, 6)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (40, 4, 7)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (41, 4, 8)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (42, 4, 9)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (43, 4, 10)
GO
INSERT [dbo].[Show] ([ID], [TimeID], [MovieID]) VALUES (44, 4, 11)
GO
SET IDENTITY_INSERT [dbo].[Show] OFF
GO
SET IDENTITY_INSERT [dbo].[Booking] ON 
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10000, CAST(N'2021-10-21' AS Date), 101, 22, 4, 440.0000, 0)
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10001, CAST(N'2021-10-22' AS Date), 103, 14, 6, 660.0000, 0)
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10002, CAST(N'2021-10-28' AS Date), 104, 1, 3, 330.0000, 0)
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10003, CAST(N'2021-10-01' AS Date), 100, 5, 8, 880.0000, 0)
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10004, CAST(N'2021-10-03' AS Date), 105, 32, 2, 220.0000, 0)
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10005, CAST(N'2021-10-26' AS Date), 102, 20, 1, 110.0000, 0)
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10006, CAST(N'2021-10-25' AS Date), 107, 19, 6, 660.0000, 0)
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10007, CAST(N'2021-10-30' AS Date), 104, 11, 3, 330.0000, 1)
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10008, CAST(N'2021-11-01' AS Date), 105, 15, 6, 660.0000, 0)
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10009, CAST(N'2021-10-14' AS Date), 102, 18, 8, 880.0000, 0)
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10010, CAST(N'2021-10-10' AS Date), 104, 19, 2, 220.0000, 0)
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10011, CAST(N'2021-10-09' AS Date), 108, 13, 5, 550.0000, 0)
GO
INSERT [dbo].[Booking] ([ID], [Date], [LocationID], [ShowID], [No_Of_Seats], [Total_Amount], [Cancelled]) VALUES (10012, CAST(N'2021-10-12' AS Date), 100, 12, 1, 110.0000, 0)
GO
SET IDENTITY_INSERT [dbo].[Booking] OFF
GO
SET IDENTITY_INSERT [dbo].[Seat] ON 
GO
INSERT [dbo].[Seat] ([ID], [Row_No], [Column_no]) VALUES (1, N'A', 1)
GO
INSERT [dbo].[Seat] ([ID], [Row_No], [Column_no]) VALUES (2, N'A', 2)
GO
INSERT [dbo].[Seat] ([ID], [Row_No], [Column_no]) VALUES (3, N'A', 3)
GO
INSERT [dbo].[Seat] ([ID], [Row_No], [Column_no]) VALUES (4, N'A', 4)
GO
INSERT [dbo].[Seat] ([ID], [Row_No], [Column_no]) VALUES (5, N'A', 5)
GO
INSERT [dbo].[Seat] ([ID], [Row_No], [Column_no]) VALUES (6, N'B', 1)
GO
INSERT [dbo].[Seat] ([ID], [Row_No], [Column_no]) VALUES (7, N'B', 2)
GO
INSERT [dbo].[Seat] ([ID], [Row_No], [Column_no]) VALUES (8, N'B', 3)
GO
INSERT [dbo].[Seat] ([ID], [Row_No], [Column_no]) VALUES (9, N'B', 4)
GO
INSERT [dbo].[Seat] ([ID], [Row_No], [Column_no]) VALUES (10, N'B', 5)
GO
SET IDENTITY_INSERT [dbo].[Seat] OFF
GO
