using System;
namespace AgilistaTracker {
  public class AgileCategory {
    public AgileCategory (string description) {
      Id = Guid.NewGuid ();
      Description = description;
    }
    public Guid Id { get; private set; }
    public string Description { get; set; }
  }
}