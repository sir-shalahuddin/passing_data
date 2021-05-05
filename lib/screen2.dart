import 'package:flutter/material.dart';

class  Screen2 extends StatelessWidget {
  String nim;
  String name;
  String address;

  Screen2(this.nim,this.name,this.address);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Validation"),
      ),
      body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top:50),
          child: Column(
            children: [
              Text('NIM  : $nim'),
              Text('Nama    : $name'),
              Text('Alamat    : $address'),
            ],
          ),


      ),
    );
  }
}
