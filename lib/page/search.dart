import 'package:flutter/material.dart';

class search extends StatelessWidget {
  String t  = "?";
  search({this.t = "biao" }) ;



  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Text("fan"),
        onPressed: (){
          Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(
        title: Text(this.t),
      ),
      body: Text('搜索页面搜索区域'),
    );
  }
}
