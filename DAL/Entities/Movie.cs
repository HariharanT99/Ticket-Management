using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace DAL.Entities
{
    [Table("Movie")]
    public partial class Movie
    {
        public Movie()
        {
            Shows = new HashSet<Show>();
        }

        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [StringLength(100)]
        public string Name { get; set; }

        [InverseProperty(nameof(Show.Movie))]
        public virtual ICollection<Show> Shows { get; set; }
    }
}
