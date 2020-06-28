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
        //backgroundColor: Colors.blueGrey.shade800,
        backgroundColor: Colors.orange.shade800,
        //title: Text('Login', style: TextStyle(color: Colors.deepOrange.shade500),),
        title: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    double desiredWidth = MediaQuery.of(context).size.width * 0.4;
    return Container(
      //color: Colors.blue.shade300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: desiredWidth,
            child: Column(
              children: [
                RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Login as Eng'),
                  ),
                  //elevation: 0,
                  color: Colors.transparent,
                  onPressed: () => _navToHome(userEng),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.blueGrey.shade800, width: 2.0),
                  ),
                ),
                RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Login as Mgr'),
                  ),
                  //elevation: 0,
                  color: Colors.transparent,
                  onPressed: () => _navToHome(userMgr),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.blueGrey.shade800, width: 2.0),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _navToHome(WebUser webUser) {
//    Navigator.of(context).push(MaterialPageRoute(
//      builder: (context) => HomePage(
//        webUser: webUser,
//      ),
//    ));

    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(
          builder: (context) => HomePage(
            webUser: webUser,
          ),
        ),
        (Route<dynamic> route) => false);
  }
}
