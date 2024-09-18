void main(){
  Dog myDog = Dog("John","German Shepard");
  myDog.eat();
  myDog.sleep();
  myDog.bark();

  Animal dog = Dog("Tom","Bull Dog");
  dog.eat();
  dog.sleep();
}

//Parent class
class Animal{
  var name;

  Animal(this.name);

  void eat(){
    print("$name is eating");
  }
  void sleep(){
    print("$name is sleeping");
  }
}

//Child class
class Dog extends Animal{
  var breed;

  Dog(String name, this.breed): super(name);
  
  void bark(){
    print("$name is barking, he is a $breed");
  }
}