void main() {
  var charizard = firePokemon('Charizard', 36);
  charizard.attack();
  charizard.useMove();
  charizard.takeDamage(40);
  charizard.heal();

  var blastoise = waterPokemon('Blastoise', 40);
  blastoise.attack();
  blastoise.useMove();
  blastoise.takeDamage(50);
  blastoise.heal();

  var venusaur = grassPokemon('Venusaur', 32);
  venusaur.attack();
  venusaur.useMove();
  venusaur.takeDamage(30);
  venusaur.heal();
}

abstract class pokemon {
  String name;
  int level;
  int hp = 100;
  
  pokemon(this.name, this.level){
    print("Constructor call: A wild $name appears!!!");
  }
  void attack() {
    print('$name attacks!');
  }
  void takeDamage(int damage) {
    hp -= damage;
    if (hp <= 0) {
      print('$name has fainted.');
    } else {
      print('$name takes $damage damage! Remaining HP: $hp');
    }
  }
  void heal() {
    hp += 20;
    if (hp > 100) hp = 100;
    print('$name heals! Current HP: $hp\n');
  }
  void useMove();
}

class firePokemon extends pokemon {
  firePokemon(String name, int level) : super(name, level);
  
  @override
  void useMove() {
    print('$name uses Flamethrower! It’s super effective!');
  }
}

class waterPokemon extends pokemon {
  waterPokemon(String name, int level) : super(name, level);
  
  @override
  void useMove() {
    print('$name uses Hydro Pump! It’s super effective!');
  }
}

class grassPokemon extends pokemon {
  grassPokemon(String name, int level) : super(name, level);
  
  @override
  void useMove() {
    print('$name uses Solar Beam! It’s super effective!');
  }
}