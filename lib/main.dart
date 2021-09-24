import 'package:flutter/material.dart';
import 'page/Tabs.dart';
import 'page/search.dart';
import 'page/jiazai.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:NewsPage(),
      routes: {
        '/search':(context)=>search(),
        '/LogPage':(context)=>LoginPage()
      },
    );
  }

}


