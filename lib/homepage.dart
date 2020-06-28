import 'package:flutter/material.dart';
import 'package:flutterresponsiveweb/customtheme.dart';
import 'package:flutterresponsiveweb/homedetailspage.dart';
import 'package:responsive_scaffold/responsive_scaffold.dart';

import 'package:flutterresponsiveweb/webuser.dart';

class HomePage extends StatefulWidget {
  final WebUser webUser;

  const HomePage({Key key, this.webUser}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _items;

  @override
  void initState() {
    _items = List.generate(20, (int index) => "Test: $index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _scaffoldKey = new GlobalKey<ScaffoldState>();

    return ResponsiveListScaffold.builder(
    scaffoldKey: _scaffoldKey,
    detailBuilder: (BuildContext context, int index, bool tablet) {
      final item = _items[index];
      return DetailsScreen(
        body: _buildDetailsBody(item, tablet, 'I am ' + item),
      );

//        Scaffold(
//          key: _scaffoldKey,
//          appBar: AppBar(
//            backgroundColor: Colors.blueGrey.shade800,
//            //title: Text('Home', style: TextStyle(color: Colors.deepOrange.shade500),),
//            title: Text('Home', style: TextStyle(color: Colors.white),),
//          ),
//          body: _buildBody(),
//        )
    },
    nullItems: Center(child: CircularProgressIndicator()),
    emptyItems: Center(child: Text("No Items Found")),
/*
    slivers: <Widget>[

      SliverAppBar(
        title: Text("Home App Bar"),
      ),
            ],
*/
    appBar: AppBar(
      backgroundColor: Colors.orange.shade800,
      leading: Icon(Icons.message, color: Colors.white,),
      title: Text(
        'Home',
        style: CustomTextStyles.appThemeLightHeaderTitles,
      ),
      elevation: 0.0,
    ),
    itemCount: _items?.length ?? 0,
    itemBuilder: (BuildContext context, int index) {
      final i = _items[index];
      return ListTile(
        leading: Text(i, style: CustomTextStyles.appThemeLightMenuTitles,),
      );
    },
/*
    bottomNavigationBar: BottomAppBar(
      elevation: 0.0,
      child: Container(
        child: IconButton(
          icon: Icon(Icons.share),
          onPressed: () {},
        ),
      ),
    ),
*/
/*
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        _scaffoldKey.currentState.showSnackBar(SnackBar(
          content: Text("Ola snackbar"),
        ));
      },
    ),
*/
      );
  }

  _buildDetailsBody(String masterItem, bool isTablet, String title) {
    return HomeDetailsScreen(
      items: _items,
      row: masterItem,
      tablet: isTablet,
      title: title,
    );
  }
}
