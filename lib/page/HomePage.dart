import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);



  @override
  _HomePageState createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var _tabCon;
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            //automaticallyImplyLeading: false,
              title:Text("主页",style: TextStyle(height: 19.0),),
              elevation: 0, // 隐藏阴影
              bottom:TabBar(
                // isScrollable:true,
                // indicatorWeight:0.5,
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