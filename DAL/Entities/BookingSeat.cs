using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace DAL.Entities
{
    [Keyless]
    [Table("Booking_Seat")]
    public partial class BookingSeat
    {
        [Column("BookingID")]
        public int? BookingId { get; set; }
        [Column("SeatID")]
        public int? SeatId { get; set; }

        [ForeignKey(nameof(BookingId))]
        public virtual Booking Booking { get; set; }
        [ForeignKey(nameof(SeatId))]
        public virtual Seat Seat { get; set; }
    }
}
