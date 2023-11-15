import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MySnackBar()));

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("SnackBar")),
        body: Builder(builder: (context) {
          return Center(
            child: ElevatedButton(
              child: const Text("Show Snack Bar"),
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text("I an Your SnackBar"),
                  action: SnackBarAction(label: "undo", onPressed: () {}),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          );
        }));
  }
}
