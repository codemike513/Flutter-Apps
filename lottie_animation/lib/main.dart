import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Lottie Animation';
  @override
  Widget build(BuildContext context) {
    return MyHomePage();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Animation"),
          automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        backgroundColor: Colors.limeAccent,
        body: Center(
          child: Container(
            padding: EdgeInsets.all(70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Load a Lottie file from your assets
                // Lottie.asset('assets/talking.json',
                //     height: 100,
                //     width: 100,
                //     repeat: true,
                //     reverse: true,
                //     animate: true),
                // Load a Lottie file from a remote url
                Lottie.network(
                  'https://raw.githubusercontent.com/xvrh/lottie-flutter/master/example/assets/17297-fireworks.json',
                  repeat: true,
                  reverse: true,
                  animate: true,
                ),
              ],
            ),
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods
      ),
    );
  }
}
