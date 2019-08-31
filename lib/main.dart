import 'package:flutter/material.dart';

import './product_manager.dart' ;

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepOrange ,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text("EasyList"),
          ),
          body: ProductManager("Food Tester"),
          ),
    );
  }
}
