using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace DAL.Entities
{
    [Table("Booking")]
    public partial class Booking
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column(TypeName = "date")]
        public DateTime? Date { get; set; }
        [Column("LocationID")]
        public int? LocationId { get; set; }
        [Column("ShowID")]
        public int? ShowId { get; set; }
        [Column("No_Of_Seats")]
        public int? NoOfSeats { get; set; }
        [Column("Total_Amount", TypeName = "money")]
        public decimal? TotalAmount { get; set; }
        public bool? Cancelled { get; set; }

        [ForeignKey(nameof(LocationId))]
        [InverseProperty("Bookings")]
        public virtual Location Location { get; set; }
        [ForeignKey(nameof(ShowId))]
        [InverseProperty("Bookings")]
        public virtual Show Show { get; set; }
    }
}
