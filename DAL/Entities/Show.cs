using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace DAL.Entities
{
    [Table("Show")]
    public partial class Show
    {
        public Show()
        {
            Bookings = new HashSet<Booking>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("TimeID")]
        public int? TimeId { get; set; }
        [Column("MovieID")]
        public int? MovieId { get; set; }

        [ForeignKey(nameof(MovieId))]
        [InverseProperty("Shows")]
        public virtual Movie Movie { get; set; }
        [ForeignKey(nameof(TimeId))]
        [InverseProperty("Shows")]
        public virtual Time Time { get; set; }
        [InverseProperty(nameof(Booking.Show))]
        public virtual ICollection<Booking> Bookings { get; set; }
    }
}
