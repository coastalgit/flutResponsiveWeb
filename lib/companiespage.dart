import 'package:flutter/material.dart';
import 'package:flutterresponsiveweb/company.dart';
import 'package:flutterresponsiveweb/customtheme.dart';
import 'package:flutterresponsiveweb/dbrepo.dart';
import 'package:flutterresponsiveweb/companydetailspage.dart';
import 'package:provider/provider.dart';
import 'package:responsive_scaffold/responsive_scaffold.dart';

import 'package:flutterresponsiveweb/webuser.dart';

class CompaniesPage extends StatefulWidget {
  //final WebUser webUser;
  //final Company company;

  //const CompaniesPage({Key key, this.company}) : super(key: key);

  @override
  _CompaniesPageState createState() => _CompaniesPageState();
}

class _CompaniesPageState extends State<CompaniesPage> {
  //List<String> _items;

  @override
  void initState() {
    //_items = List.generate(20, (int index) => "Test: $index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _scaffoldKey = new GlobalKey<ScaffoldState>();

    return Consumer<DbRepo>(
      builder: (context, repo, child) => ResponsiveListScaffold.builder(
      scaffoldKey: _scaffoldKey,
      detailBuilder: (BuildContext context, int index, bool tablet) {
        //final item = _items[index];
        final comp = repo.companies[index];
        return DetailsScreen(
          body: _buildDetailsBody(comp, tablet),
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
      emptyItems: Center(child: Text("No companies found")),
        tabletItemNotSelected: Center(child: Text("No companies selected")),
/*
      slivers: <Widget>[

        SliverAppBar(
          title: Text("Home App Bar"),
        ),
              ],
*/
      appBar: AppBar(
        backgroundColor: Colors.orange.shade800,
        //leading: Icon(Icons.message, color: Colors.white,),
        title: Text(
          'Companies',
          style: CustomTextStyles.appThemeLightHeaderTitles,
        ),
        elevation: 0.0,
      ),
      itemCount: repo.companies?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        final i = repo.companies[index];
        return ListTile(
          leading: Text(i.companyName, style: CustomTextStyles.appThemeLightMenuTitles,),
          //onTap: () => navigateTo,
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
        ),
    );
  }

  _buildDetailsBody(Company masterItem, bool isTablet) {
    return CompanyDetailsScreen(
      company: masterItem,
      //items: masterItem,
      //row: masterItem.companyName + ' Sites',
      tablet: isTablet,
      //title: title,
    );
  }
}
