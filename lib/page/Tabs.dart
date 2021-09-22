import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
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
    return Scaffold(
      appBar: AppBar(
        title: Text('登录页面'),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            const SizedBox(height: 80.0,),
            Column(
              children: [
                FlutterLogo(
                  size: 100.0,
                ),
                const SizedBox(height:16.0),
                Text('登录系统')
                ,
              ],
            ),
            const SizedBox(height:120.0),

          ],
        ),
      ),
    );
  }
}