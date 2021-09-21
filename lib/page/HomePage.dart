import 'package:flutter/material.dart';
import 'search.dart';
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
    return Column(
      children: [
        RaisedButton(
            child: Text('搜索'),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context)=>search()
                )
              );
            }),
        RaisedButton(
            child: Text('跳转'),
            onPressed: (){
              Navigator.pushNamed(context, '/search');
            }),
      ],
    );
  }
}