import 'dart:io';
import 'StuDetails.dart';

class Controller {
  List<Studetails>? details = [];

  void Details() {
    print("---------Students Details---------");
    print("---------All Students---------");
    for (var student in details!) {
      print({student.name ,student.id, student.cgpa, student.address});
    }
    Homepage();
  }

  void Homepage() {
    print("----------Student Management System-------------");
    print("Enter the number:");
    print("1. Students details");
    print("2. Add Students");
    print("3. Update Students");
    print("4. Delete Students");
    print("5. Search by specific credentials");
    print("6. Logout");
    int? input = int.parse(stdin.readLineSync()!);
    if (input == 1) {
      Details();
    }
    else if (input == 2) {
      Add();
    }
    else if (input == 3) {
      Update();
    }
    else if (input == 4) {
      Delete();
    }
    else if (input == 5) {
      Search();
    }
    else if (input == 6) {
      exit(0);
    }
    else {
      print("Wrong number inserted.");
      exit(0);
    }
  }
  void Add() {
    Studetails studet = Studetails();
    print("---------Add Student---------");

    print("Enter name:");
    studet.name = stdin.readLineSync() ?? exit(0);

    print("Enter id:");
    studet.id = int.parse(stdin.readLineSync()!) ?? exit(0);

    print("Enter cgpa:");
    studet.cgpa = double.parse(stdin.readLineSync()!) ?? exit(0);

    print("Enter address:");
    studet.address = stdin.readLineSync() ?? exit(0);

    details?.add(studet);
    Homepage();
  }

  void Update() {
    print("----Search by name to update----\nEnter name:");
    String? givenName = stdin.readLineSync();
    for(var student in details!){
      if(student.name == givenName){
        print("Enter name:");
        student.name = stdin.readLineSync() ?? exit(0);

        print("Enter id:");
        student.id = int.parse(stdin.readLineSync()!) ?? exit(0);

        print("Enter cgpa:");
        student.cgpa = double.parse(stdin.readLineSync()!) ?? exit(0);

        print("Enter address:");
        student.address = stdin.readLineSync() ?? exit(0);
      }
    }

    Homepage();

  }

  void Delete() {
    print("----Delete by name----\nEnter name:");
    String? givenName = stdin.readLineSync();

    details?.removeWhere((details) => details.name == givenName);
    Homepage();
  }

  void Search() {
    print("----Search within cgpa----\nEnter higher range:");
    double? higherRange = double.parse(stdin.readLineSync()!);
    print("Enter lower range:");
    double? lowerRange = double.parse(stdin.readLineSync()!);
    print("Details of students within the range:");
    for(var student in details!){
      if(student.cgpa >= lowerRange && student.cgpa <= higherRange){
        print({student.name, student.id, student.cgpa,student.address});
      }
    }
    Homepage();

  }
}