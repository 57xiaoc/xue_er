import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'page/Tabs.dart';
import 'page/search.dart';
void main() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);///强制竖屏
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Tabs(),
      routes: {
        '/search':(context)=>search(),
      },
    );
  }

}


