import 'dart:io';
import 'package:my_restaurant/screens/menu_screen.dart';
import 'package:my_restaurant/extensions/print_color_extension.dart';

void loadingEffect() {
  for (int i = 0; i < 3; i++) {
    stdout.write('Loading Menu System');
    for (int j = 0; j < 3; j++) {
      stdout.write('.');
      sleep(Duration(milliseconds: 500));
    }
    stdout.write('\r\x1B[K');
    sleep(Duration(milliseconds: 400));
  }
  stdout.write('\r\x1B[K');
}

void welcomeScreen() {
  print("\x1B[2J\x1B[0;0H");
  print('--------------------------------------------'.yellow);
  print('********************************************'.magenta);
  print('**  '.magenta + 'Welcome to My Restaurant Menu System'.blue + '  **'.magenta);
  print('********************************************'.magenta);
  print('--------------------------------------------'.yellow);
  print('\nReady! Press Enter to continue...'.cyan);

  stdin.readLineSync();
  loadingEffect();
  menuScreen();
}

void main(List<String> arguments) {
  welcomeScreen();
}