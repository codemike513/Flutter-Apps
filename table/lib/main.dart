import 'package:flutter/material.dart'; // Material Design Package

void main() {
  // Main function to run overall things
  runApp(// runApp to make our App Run
      MaterialApp(
          // To create App Title
          debugShowCheckedModeBanner: false,
          title: "My First APP",
          home: Scaffold(
            // To add AppBar to our App
            appBar: AppBar(title: const Text("Table in Flutter")),
            body: Material(
                // To change Background Color of App
                child: Container(
              margin: const EdgeInsets.all(10.0),
              child: Table(
                border: TableBorder.all(),
                children: [
                  const TableRow(children: [
                    Text("First Name",
                        style: TextStyle(
                            fontSize: 35.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                    Text("Last Name",
                        style: TextStyle(
                            fontSize: 35.0, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center),
                  ]),
                  const TableRow(children: [
                    Text("Mihir",
                        style: TextStyle(fontSize: 25.0),
                        textAlign: TextAlign.center),
                    Text("Pesswani",
                        style: TextStyle(fontSize: 25.0),
                        textAlign: TextAlign.center),
                  ]),
                  const TableRow(children: [
                    Text("Akshat",
                        style: TextStyle(fontSize: 25.0),
                        textAlign: TextAlign.center),
                    Text("Pesswani",
                        style: TextStyle(fontSize: 25.0),
                        textAlign: TextAlign.center),
                  ]),
                  const TableRow(children: [
                    Text("Harshit",
                        style: TextStyle(fontSize: 25.0),
                        textAlign: TextAlign.center),
                    Text("Nigdikar",
                        style: TextStyle(fontSize: 25.0),
                        textAlign: TextAlign.center),
                  ]),
                  const TableRow(children: [
                    Text("Harshaj",
                        style: TextStyle(fontSize: 25.0),
                        textAlign: TextAlign.center),
                    Text("Parihar",
                        style: TextStyle(fontSize: 25.0),
                        textAlign: TextAlign.center),
                  ]),
                ],
              ),
            )),
          )));
}
