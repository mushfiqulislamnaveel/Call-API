import 'package:classapitest2/Modules/Person.dart';
import 'package:classapitest2/Services/Person%20provider.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "API CALL", style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 22
        )),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey.shade100,

      body: ElevatedButton(
        onPressed: (){

          addPerson(
            person: Person(
                name: "Mushfiqul",
                id: "2021601",
                dept: "CSE")
          );

          },child: Text("Call API"),
      )

    );
  }
}
