import 'package:flutter/material.dart';
import 'package:flutterresponsiveweb/HomePage.dart';
import 'package:flutterresponsiveweb/webuser.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  WebUser userEng = WebUser(role: 'engineer');
  WebUser userMgr = WebUser(role: 'manager');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade800,
        //title: Text('Login', style: TextStyle(color: Colors.deepOrange.shade500),),
        title: Text('Login', style: TextStyle(color: Colors.white),),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(
      children: [
        RaisedButton(
          child: Text('Login as Eng'),
          onPressed: () => _navToHome(userEng),
        ),
        RaisedButton(
          child: Text('Login as Mgr'),
          onPressed: () => _navToHome(userMgr),
        ),
      ],
    );

  }

  _navToHome(WebUser webUser) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => HomePage(webUser: webUser,)),
    );
  }
}
