import 'package:flutter/material.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;  // we are using final because it will not change in future and there will not be any error message
  final String name = "Vishal";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Catalog App"),
        ),
        body: Container(
          constraints: BoxConstraints(
            minHeight: 70,
            maxHeight: 200,
            minWidth: 70,
            maxWidth: 200,
          ),
            color: Colors.green,
            child: Container(
              color: Colors.red,
            )),
      drawer: MyDrawer(),
    );
  }
}
