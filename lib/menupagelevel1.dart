import 'package:flutter/material.dart';
import 'package:flutterresponsiveweb/appconstants.dart';
import 'package:flutterresponsiveweb/companiespage.dart';
import 'package:flutterresponsiveweb/customtheme.dart';
import 'package:flutterresponsiveweb/companydetailspage.dart';
import 'package:flutterresponsiveweb/dbrepo.dart';
import 'package:flutterresponsiveweb/menupagemanager.dart';
import 'package:provider/provider.dart';
import 'package:responsive_scaffold/responsive_scaffold.dart';

import 'package:flutterresponsiveweb/webuser.dart';

class MenuPageLevel1Page extends StatefulWidget {
  final WebUser webUser;

  const MenuPageLevel1Page({Key key, this.webUser}) : super(key: key);

  @override
  _MenuPageLevel1PageState createState() => _MenuPageLevel1PageState();
}

class _MenuPageLevel1PageState extends State<MenuPageLevel1Page> {
  List<String> _items;
  MenuPageManager mpm = MenuPageManager();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<DbRepo>(context)..initWithUser(widget.webUser);
    _items = mpm.menu1ItemsForUser(widget.webUser);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
//        leading: Icon(
//          Icons.message,
//          color: Colors.white,
//        ),
        title: Text(
          'Dashboard',
          style: CustomTextStyles.appThemeLightHeaderTitles,
        ),
        elevation: 0.0,
      ),
      body: _buildBody(),
    );
  }

  _buildBody() {
    double desiredWidth = MediaQuery.of(context).size.width * 0.5;
    //double desiredWidth = 200;

    return Container(
      //width: desiredWidth,
      //color: Colors.yellow,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Text('12345'),
            Container(
              //color: Colors.blueGrey,
              width: desiredWidth,
              child: Center(
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //Text('ABCDE'),
                    ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, int index) {
                        return _buildListTile(item: _items[index], onSelectedCallBack: _handleItemSelection);
                      },
                      itemCount: (_items == null ? 0 : _items.length),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildListTile({String item, final Function(String) onSelectedCallBack}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
        side: BorderSide(color: Colors.blueGrey.shade700, width: 2.0),
      ),
      elevation: 4.0,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListTile(
          //leading: Icon(Icons.arrow_forward),
          trailing: Icon(Icons.arrow_forward),
          title: Text(item),
          onTap: () => onSelectedCallBack(item),
        ),
      ),
    );
  }

  _handleItemSelection(String itemString) {
    if (itemString == kCompanies) {
      _navigateToCompanyMasterDetailView();
    }
  }

  void _navigateToCompanyMasterDetailView() async {
    DbRepo repo = Provider.of<DbRepo>(context, listen: false);
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CompaniesPage(
            //company: widget.webUser.companyId,
            ),
      ),

/*
      MaterialPageRoute(
        builder: (context) => Provider.value(
            value: repo,
            builder: (context, child) {
              return CompaniesPage(
                  //company: widget.webUser.companyId,
                  );
            }),
      ),
*/
    );
  }
}
