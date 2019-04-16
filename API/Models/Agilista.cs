using System;

namespace AgilistaTracker {
  public class Agilista {
    public Agilista (string name, AgileCategory primaryFocus) {
      Name = name;
      PrimaryFocus = primaryFocus;
      Id = Guid.NewGuid ();
    }
    public Agilista (string name, AgileCategory primaryFocus, string twitterhandle) : this (name, primaryFocus) {
      TwitterHandle = twitterhandle;
    }
    public Guid Id { get; private set; }
    public string Name { get; set; }
    public AgileCategory PrimaryFocus { get; set; }
    //public AgileCategory SecondaryFocus { get; set; }
    public string TwitterHandle { get; set; }
  }
}