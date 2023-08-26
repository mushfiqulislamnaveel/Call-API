
import 'dart:convert';

List<Person> personFromMap(String str) => List<Person>.from(json.decode(str).map((x) => Person.fromMap(x)));

String personToMap(List<Person> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Person {
  String name;
  String id;
  String dept;

  Person({
    required this.name,
    required this.id,
    required this.dept,
  });

  factory Person.fromMap(Map<String, dynamic> json) => Person(
    name: json["name"],
    id: json["id"],
    dept: json["dept"],
  );

  Map<String, dynamic> toMap() => {
    "name": name,
    "id": id,
    "dept": dept,
  };
}