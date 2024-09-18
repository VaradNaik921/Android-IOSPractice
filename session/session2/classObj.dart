//Class is blueprint of the object
//Object is instance of class
//Heap(Object)
//Stack(Reference) : Last In, First Out (LIFO) principle
//Queue: First In, First Out (FIFO)

//Stack is used in memory
void main(){
  // Person p1 = Person("John");
  // // p1.name = "John";
  // p1.age = 20;
  // p1.greetPerson();

  // var Doe = Person("Doe");
  // // Doe.name = "Doe";
  // Doe.age = 02;
  // Doe.greetPerson();
  
  // Person namedP1 = Person.namedConst("Jane", 20);
  // namedP1.greetPerson();


  //Singleton
  var sharedObject = Singleton();
  sharedObject.name = "John";
  sharedObject.greetPerson();
  var sharedObj2 = Singleton();
  sharedObj2.name = "Jane";
  sharedObj2.greetPerson();
  sharedObject.greetPerson();
}

//Class
class Person{
  var name;
  var age;
  
  // //Default Constructor
  // Person(){
  //   print("Object is created");
  // }
  
  // //Parametric Constructor
  // Person(String name){
  //   this.name = name;
  // }
  
  // //Generative Constructor
  // Person(this.name);
  
  // //Named Constructor
  // Person.namedConst(this.name, this.age);
  // Person.namedConstNoAge(this.name):this.age=0;
  
  greetPerson(){
    print("Hello $name, you are $age year old");
  }
}

//Singleton class using factory
class Singleton{
  static final Singleton _instance = Singleton._internal();
  var name;

  factory Singleton(){
    return _instance;
  }

  greetPerson(){
    print("Hello $name");
  }
  Singleton._internal();
}