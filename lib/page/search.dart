import 'package:flutter/material.dart';

class search extends StatelessWidget {
  String t  = "?";
  search({this.t = "biao" }) ;
  var _tabCon;


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
      return MaterialApp(
        home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              //automaticallyImplyLeading: false,
              title:Text("111"),
              bottom:TabBar(
                controller: _tabCon,
                tabs: [
                  Text('热门'),
                  Text('推荐')
                ],
              )

            ),
            body: TabBarView(
              controller: _tabCon,
              children: [
                Text('热门'),
                Text('实际'),
              ],
            ),
          ),
        ),
      );
  }
}
