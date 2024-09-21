void main() {
  var asta = antiMagic('Asta', 'Anti Magic');
  asta.attack();
  asta.useGrimoire();

  var yuno = windMagic('Yuno', 'Wind Magic');
  yuno.attack();
  yuno.useGrimoire();

  var noelle = waterMagic('Noelle', 'Water Magic');
  noelle.attack();
  noelle.useGrimoire();
}

abstract class magicUser {
  String name;
  String magicType;

  magicUser(this.name, this.magicType);

  void attack();
  void useGrimoire();
}

class antiMagic implements magicUser {
  String name;
  String magicType;

  antiMagic(this.name, this.magicType);

  @override
  void attack() {
    print('$name attacks with his Demon-Dweller Sword!');
  }
  @override
  void useGrimoire() {
    print('$name uses his 5-leaf Grimoire to negate all magic!\n');
  }
}

class windMagic implements magicUser {
  String name;
  String magicType;

  windMagic(this.name, this.magicType);

  @override
  void attack() {
    print('$name attacks with a Wind Blade!');
  }
  @override
  void useGrimoire() {
    print('$name uses his 4-leaf Grimoire to summon a Wind Spirit!\n');
  }
}

class waterMagic implements magicUser {
  String name;
  String magicType;

  waterMagic(this.name, this.magicType);

  @override
  void attack() {
    print('$name attacks with Sea Dragon’s Roar!');
  }
  @override
  void useGrimoire() {
    print('$name uses her 3-leaf Grimoire to summon water shields!\n');
  }
}