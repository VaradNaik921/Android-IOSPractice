void main(){
  Animal dog = Dog("Tom");
  dog.makeSound();
  dog.sleep();
  Animal cat = Cat("Beerus");
  cat.makeSound();
  cat.sleep();  
}
abstract class Animal{
  String name;
  Animal(this.name);

  void makeSound();
  void sleep(){
    print("$name is sleeping");
  }
}

class Dog extends Animal{
  Dog(String name): super(name);
  @override
  void makeSound(){
    //TODO: implement makeSound
    print("$name is barking");
  }
}

class Cat extends Animal{
  Cat(String name): super(name);
  @override
  void makeSound(){
    //TODO: implement makeSound
    print("$name is meowing");
  }
}