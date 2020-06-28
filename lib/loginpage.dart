import 'package:flutter/material.dart';
import 'package:flutterresponsiveweb/companiespage.dart';
import 'package:flutterresponsiveweb/customtheme.dart';
import 'package:flutterresponsiveweb/menupagelevel1.dart';
import 'package:flutterresponsiveweb/webuser.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  WebUser userEng = WebUser(role: 'engineer', displayname: 'Gordon');
  WebUser userMgr1 = WebUser(role: 'manager',displayname: 'Alice', companyId: 'C001');
  WebUser userMgr2 = WebUser(role: 'manager',displayname: 'Bob', companyId: 'C002');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.message, color: Colors.white,),
        //backgroundColor: Colors.blueGrey.shade800,
        backgroundColor: Colors.orange.shade800,
        //title: Text('Login', style: TextStyle(color: Colors.deepOrange.shade500),),
        title: Text(
          'Login',
          style: CustomTextStyles.appThemeLightHeaderTitles,
        ),
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    double kRadius = 8;
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
                    borderRadius: BorderRadius.circular(kRadius),
                    side: BorderSide(color: Colors.blueGrey.shade800, width: 2.0),
                  ),
                ),
                RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Login as Mgr 1'),
                  ),
                  //elevation: 0,
                  color: Colors.transparent,
                  onPressed: () => _navToHome(userMgr1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kRadius),
                    side: BorderSide(color: Colors.blueGrey.shade800, width: 2.0),
                  ),
                ),
                RaisedButton(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Login as Mgr 2'),
                  ),
                  //elevation: 0,
                  color: Colors.transparent,
                  onPressed: () => _navToHome(userMgr2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kRadius),
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
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) =>
          MenuPageLevel1Page(
            webUser: webUser,
          ),
    ));
  }
//    Navigator.of(context).pushAndRemoveUntil(
//        MaterialPageRoute(
//          builder: (context) => MenuPageLevel1Page(
//            webUser: webUser,
//          ),
//        ),
//        (Route<dynamic> route) => false);
//  }

}
