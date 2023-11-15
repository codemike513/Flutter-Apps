import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyForm(),
    ));

class MyForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyFormState();
}

class MyFormState extends State<MyForm> {
  var _myFormKey = GlobalKey<FormState>();
  var _password = TextEditingController();
  var _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" My Form")),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
        child: Form(
          key: _myFormKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  validator: (String? msg) {
                    if (msg == null) {
                      return "Please Enter Your Name";
                    }
                    if (msg.length < 3) {
                      return "Name is less than 3 character";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: "Name",
                      labelStyle: TextStyle(fontSize: 20.0),
                      hintText: "Enter Your Name",
                      hintStyle: TextStyle(fontSize: 25.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  keyboardType: TextInputType.phone,
                  validator: (String? msg) {
                    if (msg == null) {
                      return "Please Enter Your Mobile Number";
                    }
                    if (msg.length != 10) {
                      return "Please Enter Valid Mobile Number";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      labelText: "Mobile",
                      labelStyle: TextStyle(fontSize: 20.0),
                      hintText: "Enter Your Mobile Number",
                      hintStyle: TextStyle(fontSize: 25.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: _password,
                  validator: (String? msg) {
                    if (msg == null) {
                      return "Please Enter Your Password";
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: 20.0),
                      hintText: "Enter Your Password",
                      hintStyle: TextStyle(fontSize: 25.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: _confirmPassword,
                  validator: (String? msg) {
                    if (msg != _password.value.text) {
                      return "Please Enter Same Password";
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(fontSize: 20.0),
                      hintText: "Re-Enter Your Password",
                      hintStyle: TextStyle(fontSize: 25.0),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.done),
        onPressed: () {
          _myFormKey.currentState?.validate();
        },
      ),
    );
  }
}
