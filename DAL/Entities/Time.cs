using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace DAL.Entities
{
    [Table("Time")]
    public partial class Time
    {
        public Time()
        {
            Shows = new HashSet<Show>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        public TimeSpan? ShowTime { get; set; }

        [InverseProperty(nameof(Show.Time))]
        public virtual ICollection<Show> Shows { get; set; }
    }
}
