namespace EntityFramework_CodeFirst_DB
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class LunchBoxModel : DbContext
    {
        public LunchBoxModel()
            : base("name=LunchBox")
        {
            //將Entity Framework的SQL語法操作顯示在Console上面
            this.Database.Log = s => Console.WriteLine(s);
        }

        public virtual DbSet<Product> Product { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
