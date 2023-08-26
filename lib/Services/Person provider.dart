
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../Modules/Person.dart';

class PersonProvider with ChangeNotifier{
  List<Person> persons = [];


}

Future<void> addPerson({required Person person})async{
  const url = "https://call-api-ca284-default-rtdb.asia-southeast1.firebasedatabase.app/Mushfiqul.json";

  final response = await http.post(
      Uri.parse(url),
     /* body: jsonEncode({
        "name": person.name,
        "id": person.id,
        "dept": person.dept,
      }),*/

      body: jsonEncode(person.toMap())
  );
  print(response.statusCode);
  print(response.body);

}