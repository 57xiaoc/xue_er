import 'package:flutter/material.dart';
import 'page/Tabs.dart';
import 'page/search.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:LoginPage(),
      routes: {
        '/search':(context)=>search(),
      },
    );
  }

}


