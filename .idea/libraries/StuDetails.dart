class Studetails {

  String? _name;
  int? _id;
  double? _cgpa;
  String? _address;

  String get name => _name!;

  set name(String value) {
    _name = value;
  }

  int get id => _id!;

  String get address => _address!;

  set address(String value) {
    _address = value;
  }

  double get cgpa => _cgpa!;

  set cgpa(double value) {
    _cgpa = value;
  }

  set id(int value) {
    _id = value;
  }

}