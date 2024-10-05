import 'dart:io';
import 'dart:math';
import 'package:my_restaurant/category_model.dart';
import 'package:my_restaurant/menu_model.dart';
import 'package:my_restaurant/my_restaurant_service.dart';
import 'package:my_restaurant/extensions/print_color_extension.dart';
import 'package:my_restaurant/screens/receipt_screen.dart';

void menuScreen() {
  final service = MyRestaurantService();
  final categories = service.getAllCategories();
  int? input;

  while (input != 0) {
    print("\x1B[2J\x1B[0;0H");
    print('Select the menu you want to order...');

    for (CategoryModel category in categories) {
      print("");
      print(category.name.blue);
      final menus = service.getMenusFromCategory(category.id);

      for (MenuModel menu in menus) {
        print('${menu.id}. ${menu.name}'.padRight(25) + '${menu.currency} ${menu.price}'.padRight(10).yellow + '${service.getQuantity(menu) ?? ''}'.magenta);
      }
    }

    print('\nTotal price : ${'${service.calculateTotalPrice()}'.green}');
    print('Enter 0 to confirm order');

    final inputString = stdin.readLineSync();
    input = int.tryParse(inputString ?? '');

    if (input == 0) {
      if (verifyOrder()) {
        receiptScreen(service);
        break;
      } 
      else {
        print("Verification failed, please try again.");
      }
    } 
    else {
      service.addMenuToCart(input ?? 999);
    }
  }
  print('End');
}

bool verifyOrder() {
  final random = Random();
  final otp = random.nextInt(9000) + 1000;
  print('Enter OTP to confirm your order: $otp');

  final userOtp = stdin.readLineSync();
  if (userOtp == otp.toString()) {
    print("Order confirmed!".green);
    return true;
  }
  
  return false;
}