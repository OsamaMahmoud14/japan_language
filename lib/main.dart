import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/numbers_page.dart';
void main(){
  runApp(Toku());
}

class Toku extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(

    home: home_page(),
    debugShowCheckedModeBanner: false,
  );
  }
}