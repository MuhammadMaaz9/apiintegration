import 'package:apiintegration/view/app.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyMain());
}

class MyMain extends StatelessWidget {
  const MyMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
    );
  }
}