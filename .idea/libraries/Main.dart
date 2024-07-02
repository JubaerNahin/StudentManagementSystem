import 'dart:io';
import 'Controller.dart';

void main() {
  print("----------Student Management System-------------");
  print("Enter the number:");
  print("1. Login");
  print("2. Register");
  print("3. Exit");
  Main main = Main();
  int? input = int.parse(stdin.readLineSync()!);
  if (input == 1) {
    main.Login();
  }
}


class Main{
  Controller controller = Controller();

  void Login() {
    String? username;
    int? password;

    username = stdin.readLineSync();
    password = int.parse(stdin.readLineSync()!);

    if (username == "nahin" && password == 123) {
      controller.Homepage();
    }
  }
}