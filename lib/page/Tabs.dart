import 'package:flutter/material.dart';
import 'shou.dart';
import 'HomePage.dart';
import 'search.dart';
class Tabs extends StatefulWidget {
  Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() {
    return _TabsState();
  }
}

class _TabsState extends State<Tabs> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  int _currentIndex = 0;
  List _page = [
    HomePage(),
    shou()
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(

      appBar: AppBar(
        title: Text('Flutter Demo'),

      ),
      body: _page[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            this._currentIndex = index;
          });
        },
        items:[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('shouye')),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              title: Text('shou'))
        ],
      ),
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home),)
      //   ],
      // ),
    );
  }
}
class mybutton extends StatefulWidget {
  mybutton({Key? key}) : super(key: key);

  @override
  _mybuttonState createState() {
    return _mybuttonState();
  }
}

class _mybuttonState extends State<mybutton> {
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
    return Column(
      children: [
        Chip(label: Text('$count')),
        RaisedButton(child:Text("按钮"),onPressed:(){
          setState(() {
            count++;
          });
        })
      ],
    );
  }
  int count  = 0;
}
