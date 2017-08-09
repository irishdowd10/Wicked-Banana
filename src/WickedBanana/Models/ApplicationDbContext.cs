using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace WickedBanana.Models
{
    public class ApplicationDbContext: IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext() { }
        public DbSet<Banana> Bananas { get; set; }
        public DbSet<Item> Items { get; set; }
        public DbSet<Foe> Foes { get; set; }
        public DbSet<BananaItem> BananaItems { get; set; }


        public ApplicationDbContext(DbContextOptions options) : base(options)
        {
           
        }
        protected override void OnModelCreating(ModelBuilder builder)
        {
            builder.Entity<BananaItem>()
                .HasKey(bi => new { bi.BananaId, bi.ItemId });

            builder.Entity<BananaItem>()
                .HasOne(bi => bi.Banana)
                .WithMany(b => b.BananaItems)
                .HasForeignKey(bi => bi.BananaId);

            builder.Entity<BananaItem>()
                .HasOne(bi => bi.Item)
                .WithMany(b => b.BananaItems)
                .HasForeignKey(bi => bi.ItemId);
            base.OnModelCreating(builder);
        }
        protected override void OnConfiguring(DbContextOptionsBuilder options)
        {
            options.UseSqlServer(@"Server=(localdb)\mssqllocaldb;Database=WickedBanana;integrated security=True");
        }

    }
}
