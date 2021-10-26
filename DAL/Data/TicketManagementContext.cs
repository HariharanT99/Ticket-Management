using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using DAL.Entities;

#nullable disable

namespace DAL.Data
{
    public partial class TicketManagementContext : DbContext
    {
        public TicketManagementContext()
        {
        }

        public TicketManagementContext(DbContextOptions<TicketManagementContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Booking> Bookings { get; set; }
        public virtual DbSet<BookingSeat> BookingSeats { get; set; }
        public virtual DbSet<Location> Locations { get; set; }
        public virtual DbSet<Movie> Movies { get; set; }
        public virtual DbSet<Seat> Seats { get; set; }
        public virtual DbSet<Show> Shows { get; set; }
        public virtual DbSet<Time> Times { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=TRAINEE-05; Database=TicketManagement;User Id=SA; Password=harant@26031999;Trusted_Connection=false;MultipleActiveResultSets=true;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "SQL_Latin1_General_CP1_CI_AS");

            modelBuilder.Entity<Booking>(entity =>
            {
                entity.HasOne(d => d.Location)
                    .WithMany(p => p.Bookings)
                    .HasForeignKey(d => d.LocationId)
                    .HasConstraintName("FK__Booking__Locatio__300424B4");

                entity.HasOne(d => d.Show)
                    .WithMany(p => p.Bookings)
                    .HasForeignKey(d => d.ShowId)
                    .HasConstraintName("FK__Booking__ShowID__30F848ED");
            });

            modelBuilder.Entity<BookingSeat>(entity =>
            {
                entity.HasOne(d => d.Booking)
                    .WithMany()
                    .HasForeignKey(d => d.BookingId)
                    .HasConstraintName("FK__Booking_S__Booki__32E0915F");

                entity.HasOne(d => d.Seat)
                    .WithMany()
                    .HasForeignKey(d => d.SeatId)
                    .HasConstraintName("FK__Booking_S__SeatI__33D4B598");
            });

            modelBuilder.Entity<Location>(entity =>
            {
                entity.Property(e => e.Name).IsUnicode(false);
            });

            modelBuilder.Entity<Seat>(entity =>
            {
                entity.Property(e => e.RowNo)
                    .IsUnicode(false)
                    .IsFixedLength(true);
            });

            modelBuilder.Entity<Show>(entity =>
            {
                entity.HasOne(d => d.Movie)
                    .WithMany(p => p.Shows)
                    .HasForeignKey(d => d.MovieId)
                    .HasConstraintName("FK__Show__MovieID__2B3F6F97");

                entity.HasOne(d => d.Time)
                    .WithMany(p => p.Shows)
                    .HasForeignKey(d => d.TimeId)
                    .HasConstraintName("FK__Show__TimeID__2A4B4B5E");
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
