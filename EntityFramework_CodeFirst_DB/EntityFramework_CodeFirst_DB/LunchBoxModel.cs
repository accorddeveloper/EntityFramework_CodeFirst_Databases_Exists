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
            //�NEntity Framework��SQL�y�k�ާ@��ܦbConsole�W��
            this.Database.Log = s => Console.WriteLine(s);
        }

        public virtual DbSet<Product> Product { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
        }
    }
}
