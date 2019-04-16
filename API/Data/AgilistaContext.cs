using AgilistaTracker;
using Microsoft.EntityFrameworkCore;

public class AgilistaContext:DbContext
{
  public AgilistaContext(DbContextOptions<AgilistaContext> options)
  : base(options){}
  
  public AgilistaContext(){}
  public DbSet<Agilista> Agilistas { get; set; }
  public DbSet<Category> Categories  { get; set; }  
}