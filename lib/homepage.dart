import 'package:flutter/material.dart';
import 'package:flutterresponsiveweb/webuser.dart';

class HomePage extends StatefulWidget {
  final WebUser webUser;

  const HomePage({Key key, this.webUser}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade800,
        //title: Text('Home', style: TextStyle(color: Colors.deepOrange.shade500),),
        title: Text('Home', style: TextStyle(color: Colors.white),),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    return Column(
      children: [
        Text('View for '+widget.webUser.role),
      ],
    );
  }

//  _buildBody() {
//    Navigator.of(context).push(
//        MaterialPageRoute(
//          builder: (context) => HomePage()()
//          ),
//        ),
//  }
}
