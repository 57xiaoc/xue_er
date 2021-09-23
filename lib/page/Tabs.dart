import 'package:flutter/material.dart';
//Tabs()是一个登录页面
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
    TextEditingController _unameController = TextEditingController();
    TextEditingController _passnameController = TextEditingController();
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('登录页面'),
      // ),
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
            Center(
              widthFactor: 10,
              child:  Column(
                children: <Widget>[
                  TextField(
                    autofocus: true,
                    controller: _unameController,
                    decoration: InputDecoration(
                        labelText: "用户名",
                        hintText: "用户名或邮箱",

                        prefixIcon: Icon(Icons.person)
                    ),
                  ),
                  const SizedBox(height:12.0),
                  TextField(
                    controller: _passnameController,
                    decoration: InputDecoration(
                        labelText: "密码",
                        hintText: "您的登录密码",
                        prefixIcon: Icon(Icons.lock)
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
            const SizedBox(height:12.0),
            Container(
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  RaisedButton(
                      color:Color(255),
                      child: Text('登录'),
                      onPressed: (){
                        if (_unameController.text == 'jiang'&&_passnameController.text == '123'){
                          // Navigator.pushNamed(context, '/search');
                          Navigator.popAndPushNamed(context, '/search');
                        }
                        else
                          print(_unameController);
                        print('密码错误');
                      }
                  ),
                  const SizedBox(width:40.0),
                  RaisedButton(
                      child: Text('取消'),
                      onPressed: (){
                        print('关闭应用');
                      }
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}