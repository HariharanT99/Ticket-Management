using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace DAL.Entities
{
    [Table("Location")]
    public partial class Location
    {
        public Location()
        {
            Bookings = new HashSet<Booking>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [StringLength(100)]
        public string Name { get; set; }

        [InverseProperty(nameof(Booking.Location))]
        public virtual ICollection<Booking> Bookings { get; set; }
    }
}
