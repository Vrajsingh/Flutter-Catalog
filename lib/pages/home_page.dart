import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;  // we are using final because it will not change in future and there will not be any error message
  final String name = "Vishal";
  //  double pi = 3.14;
  //  bool isMale = true;
  //  num temp = 30.5; //both int and double can be added

  //  var day = "Tuesday";
  //  const pie = 3.14; //can't do manipulation
  //  final price = 44; // can add data in list
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Center(
            child: Container(
              child: Text("Welcome to $days days Flutter Project by $name"),
            )),
      drawer: Drawer()
    );
  }
}
