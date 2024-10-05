import 'package:my_restaurant/menu_model.dart';
import 'package:my_restaurant/my_restaurant_service.dart';
import 'package:my_restaurant/extensions/print_color_extension.dart';

void receiptScreen(MyRestaurantService service) {
  print("\x1B[2J\x1B[0;0H");
  print("=============== RECEIPT ===============".cyan);
  final orderedMenus = service.getOrderedMenus();

  for (MenuModel menu in orderedMenus) {
    print('${menu.name}'.padRight(25) + '${menu.currency} ${menu.price}'.padRight(10).yellow + 'x ${service.getQuantity(menu)}'.magenta);
  }
  print("=======================================".cyan);
  print('\nTotal price: ${'${service.calculateTotalPrice()}'.green}');
  print("Thank you for ordering from MyRestaurant!");
}