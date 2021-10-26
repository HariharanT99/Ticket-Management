USE [TicketManagement]
GO
/****** Object:  StoredProcedure [dbo].[uspGetShow]    Script Date: 25-10-2021 18:07:06 ******/
DROP PROCEDURE [dbo].[uspGetShow]
GO
/****** Object:  StoredProcedure [dbo].[uspGetMovie]    Script Date: 25-10-2021 18:07:06 ******/
DROP PROCEDURE [dbo].[uspGetMovie]
GO
/****** Object:  StoredProcedure [dbo].[uspGetLocation]    Script Date: 25-10-2021 18:07:06 ******/
DROP PROCEDURE [dbo].[uspGetLocation]
GO
/****** Object:  StoredProcedure [dbo].[uspGetBooking]    Script Date: 25-10-2021 18:07:06 ******/
DROP PROCEDURE [dbo].[uspGetBooking]
GO
/****** Object:  StoredProcedure [dbo].[uspCreateBooking]    Script Date: 25-10-2021 18:07:06 ******/
DROP PROCEDURE [dbo].[uspCreateBooking]
GO
/****** Object:  StoredProcedure [dbo].[uspCancelBooking]    Script Date: 25-10-2021 18:07:06 ******/
DROP PROCEDURE [dbo].[uspCancelBooking]
GO
/****** Object:  StoredProcedure [dbo].[uspCancelBooking]    Script Date: 25-10-2021 18:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Cancel Booking

CREATE PROC [dbo].[uspCancelBooking]
@ID int
as
BEGIN
	Update Booking
	Set Cancelled = 'True'
	Where ID = @ID;
END
GO
/****** Object:  StoredProcedure [dbo].[uspCreateBooking]    Script Date: 25-10-2021 18:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspCreateBooking]
@Date date,
@LocationID int,
@MovieID int,
@TimeID int,
@No_Of_Seats int,
@TotalAmount money,
@Cancelled bit = 'false'
as
BEGIN
	--First Get ShowId respected to selected Movie and Time.
	DECLARE @ShowID int = (Select ID
						from [Show]
						Where MovieID = @MovieID AND TimeID = @TimeID)
	IF (@No_Of_Seats > 0)
	BEGIN
		--Insert the Booking Deatils
		Insert Into Booking( [Date], LocationID, ShowID, No_Of_Seats, Total_Amount, Cancelled)
		Values (@Date, @LocationID, @ShowID, @No_Of_Seats, @TotalAmount, @Cancelled);
	END
	ELSE
	BEGIN
		Print ('Number of seatd should be more than 0');
	END
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetBooking]    Script Date: 25-10-2021 18:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Get Bookings

CREATE PROC [dbo].[uspGetBooking]
as
BEGIN
	Select ID
	,[Date]
	,LocationID
	,ShowID
	,No_Of_Seats
	,Total_Amount
	,Cancelled
	from Booking
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetLocation]    Script Date: 25-10-2021 18:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Get Locations

CREATE PROC [dbo].[uspGetLocation]
as
BEGIN
	Select ID
	,[Name]
	from [Location]
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetMovie]    Script Date: 25-10-2021 18:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--Get Movies


CREATE PROC [dbo].[uspGetMovie]
as
BEGIN
	Select ID
	,[Name]
	from Movie
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetShow]    Script Date: 25-10-2021 18:07:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- Get Show Time


CREATE PROC [dbo].[uspGetShow]
as
BEGIN
	Select ID
	,ShowTime
	from [Time]
END
GO
