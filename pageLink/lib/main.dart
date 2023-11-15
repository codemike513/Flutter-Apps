import 'package:flutter/material.dart';
import 'detail.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pages Navigation",
      home: PageNavigation()));
}

class PageNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PageNavigationState();
}

class PageNavigationState extends State<PageNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pages Navigation")),
      body: Center(
        child: ElevatedButton(
          child: Text("Click Here"),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MyPageDetail()));
          },
        ),
      ),
    );
  }
}
