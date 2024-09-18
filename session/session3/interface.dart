void main(){
  Animal dog = Dog();
  Animal cat = Cat();
  dog.eat();
  cat.eat();
  dog.makeSound();
  cat.makeSound();
}

abstract class Animal{
  void makeSound();
  void eat();
}

class Dog implements Animal{
  @override
  void eat(){
    print("Dog eats bone");
  }
  @override
  void makeSound(){
    print("Dog barks");
  }
}

class Cat implements Animal{
  @override
  void eat(){
    print("Cat eats fish");
  }
  @override
  void makeSound(){
    print("Cat meows");
  }
}