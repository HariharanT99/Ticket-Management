using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

#nullable disable

namespace DAL.Entities
{
    [Table("Seat")]
    public partial class Seat
    {
        [Key]
        [Column("ID")]
        public int Id { get; set; }
        [Column("Row_No")]
        [StringLength(1)]
        public string RowNo { get; set; }
        [Column("Column_no")]
        public int? ColumnNo { get; set; }
    }
}
