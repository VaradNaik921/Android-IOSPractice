void main() {
  ironMan IronMan = ironMan("Iron Man", "Repulsor Rays");
  IronMan.fly();
  IronMan.usePower();
  IronMan.fight();
  IronMan.defend();

  spiderMan SpiderMan = spiderMan("Peter Parker", "Spider Webs");
  SpiderMan.swing();
  SpiderMan.usePower();
  SpiderMan.fight();
  SpiderMan.defend();

  superHero SpiderManMM = spiderMan("Miles Morales", "Camoflague");
  print("Casting superHero to spiderMan to access child-specific method (swing)");
  (SpiderManMM as spiderMan).swing();
  SpiderManMM.usePower();
  SpiderManMM.fight();
  SpiderManMM.defend();
}

class superHero {
  String heroName;
  String specialPower;

  superHero(this.heroName, this.specialPower){
    print("Constructor Call: A new superhero has appeared!!!");
  }

  void usePower() {
    print("$heroName uses $specialPower!");
  }

  void fight() {
    print("$heroName engages in a heroic battle!");
  }

  void defend() {
    print("$heroName defends the city with their powers!\n");
  }
}

class spiderMan extends superHero {
  spiderMan(String heroName, String specialPower) : super(heroName, specialPower){
    print("Constructor Call from Child Class(spiderMan):A new Spider Man: $heroName has appeared!!!");
  }

  void swing() {
    print("$heroName is swinging across the city with web-slingers!");
  }
}

class ironMan extends superHero {
  ironMan(String heroName, String specialPower) : super(heroName, specialPower);

  void fly() {
    print("$heroName flies in with his Iron Man suit!");
  }
}