import 'package:flutter/material.dart';
import 'mahasiswa.dart';
import 'package:passing_data/screen2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String nim="";
  String name="";
  String address="";

  var _formKey = GlobalKey<FormState>();

  void _submit() {
    final isValid = _formKey.currentState.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState.save();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Screen2(nim,name,address) ,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
      ),
      //body
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        //form
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Text(
                "Passing Data between Activity In Flutter ",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              //styling
              TextFormField(
                decoration: InputDecoration(labelText: 'NIM'),
                keyboardType: TextInputType.text,
                onSaved: (value) {
                 nim = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter a valid NIM';
                  }
                  return null;
                },
              ),
              //box styling
              //text input
              TextFormField(
                decoration: InputDecoration(labelText: 'Nama'),
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  name = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter a valid name!';
                  }
                  return null;
                },
              ),

              TextFormField(
                decoration: InputDecoration(labelText: 'Alamat'),
                keyboardType: TextInputType.text,
                onSaved: (value) {
                  address = value;
                },
                validator: (value) {
                  if (value.isEmpty) {
                    return 'Enter a valid name!';
                  }
                  return null;
                },
              ),

              SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              RaisedButton(
                padding: EdgeInsets.symmetric(
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 24.0,
                  ),
                ),
                onPressed: () {
                  _submit();
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
