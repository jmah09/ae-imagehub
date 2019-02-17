using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace AEImageHub.Models
{
    public partial class ImageContext : DbContext
    {
        public ImageContext()
        {

        }

        public ImageContext(DbContextOptions<ImageContext> options)
            : base(options)
        {
        }

        public virtual DbSet<Image> Image { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Image>()
                .HasKey(i => i.iId);
        }
    }
}
