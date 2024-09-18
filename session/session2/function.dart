void main(){
  var a = 20;
  var b = 30;
  greetMe();
  print(add(4,5));
  var person = name("John");
  print(person);
  var personArr = nameArr("John");
  print(personArr);
  print(addOpt(30,20));
  print(addOpt(a,30,19));
  print(addNam(a:a,c:5,b:20));
  print(addNamV2(c:13,a,b));
  print(addNamArr(c:13,a,b));
}

//1)non parametric function
greetMe() {
  print('hello world');
}
//return type when not specified is dynamic

//2)parametric function
String name(String name){
  return "Hello $name";
}
int add(int a, int b){
  return a+b;
}

//3)Fat Arrow function
String nameArr(String name) => "Hello $name from Arrow function";

//4)Optional Function
int addOpt(int a, int b, [int c=0]){
  return a+b+c;
}

//5)Named Function
int addNam({int a=0, int b=0, int c=0}){
  return a+b+c;
}
int addNamV2(int a, int b, {int c=0}){
  return a+b+c;
}
//Named Arrow func
int addNamArr(int a, int b, {int c=0}) => a+b+c;
