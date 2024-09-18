void main() {
  String firstName = " John";
  String lastName = "Doe";
  print(firstName + " " + lastName);
  print("$firstName $lastName");
  
  String resultLow = firstName.toLowerCase();
  print(resultLow);
  String resultUpp = firstName.toUpperCase();
  print(resultUpp);
  String resultTrim = firstName.trim();
  print(resultTrim);
  var resultLen = firstName.length;
  print(resultLen);
  
  var resultSplit = resultTrim.split("");
  print(resultSplit);
}