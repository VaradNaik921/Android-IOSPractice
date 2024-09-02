// //code 1: print statement
// void main() {
//     print('hello world');
// }

//code 2: variable & datatype
// Variable can be named as a-z, A-Z, 0-9, ....
/* recommended to use camel casing while declaring variable name
// //camel case:firstName  //snake case:first_name */
/* Note: variable name cannot start with number
int 1number = 1 will be wrong declaration */

// Data types: int, double, bool, String, List, Map, Dynamic
void main() {
  //int and double
  int number1 = 1;

  double decimalnumber1 = 1.2;
  double $sum = number1 + decimalnumber1;
  print(
      'sum of $number1 + $decimalnumber1 is ${$sum} or ${number1 + decimalnumber1}');

  //bool and String
  bool isUnderAge = false;
  String name = 'Varad';
  print('Name: $name is underage : $isUnderAge');

  //List
  List studentDetail = [name, 20];
  print(studentDetail);

  List<int> score = [2, 3, 4, 5, 6, 7];
  List<String> names = ['V', 'A', 'R', 'A', 'D'];
  print(score);
  print(names);

  //Map
  Map myDetail = {
    'Name': 'varad',
    'age': 20,
    'underage': false,
    'score': score
  };
  print(myDetail);
  print(myDetail['Name']);

  //Dynamic can have any data type based on asignment but while changing the value the datatype has to remain same ie if once var has been given int value second time aswell it need to have int value
//   example:
  var anyValue = 100;
  print('anyValue = $anyValue');
  anyValue = 50;
  print('anyValue = $anyValue');
  print(anyValue.runtimeType);

//   var anyValue = 100.2;
//   print(anyValue);
//   var anyValue = '100';
//   print(anyValue);
//   var anyValue = true;
//   print(anyValue);
//   var anyValue = ['hello','world'];
//   print(anyValue);

  //final & const(value cannot be changed once assigned)
  ///final is declared during run time, const is declared during compile time
  const neverTryToChangeMe = '3.1416';
  print(neverTryToChangeMe);
  //const(value cannot be changed once assigned)

  final currentTime = DateTime.now();
  print(currentTime);
  //final(value can be changed but set only once and initialize when it is accessed(Lazy Initialization))
}

// //code extra: demonstrating return of void which is control that is control over execution
// void main(){
//   test();
//   print("hell main");
// }
// void test(){
//   print("hello test");
// }