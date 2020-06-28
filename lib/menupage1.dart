import 'package:flutter/material.dart';
import 'package:flutterresponsiveweb/HomePage.dart';
import 'package:flutterresponsiveweb/webuser.dart';

class MenuPage1 extends StatefulWidget {

  final WebUser webUser;

  const MenuPage1({Key key, this.webUser}) : super(key: key);

  @override
  _MenuPage1State createState() => _MenuPage1State();
}

class _MenuPage1State extends State<MenuPage1> {

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
        Text('View for '+widget.webUser.role),      ],
    );

  }

  _navToHome(WebUser webUser) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => HomePage(webUser: webUser,)),
    );
  }
}
