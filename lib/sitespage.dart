import 'package:flutter/material.dart';
import 'package:flutterresponsiveweb/company.dart';
import 'package:flutterresponsiveweb/customtheme.dart';
import 'package:flutterresponsiveweb/dbrepo.dart';
import 'package:flutterresponsiveweb/companydetailspage.dart';
import 'package:flutterresponsiveweb/site.dart';
import 'package:flutterresponsiveweb/sitedetailspage.dart';
import 'package:provider/provider.dart';
import 'package:responsive_scaffold/responsive_scaffold.dart';

import 'package:flutterresponsiveweb/webuser.dart';

class SitesPage extends StatefulWidget {

  final List<Site> sites;

  const SitesPage({Key key, this.sites}) : super(key: key);

  @override
  _SitesPageState createState() => _SitesPageState();
}

class _SitesPageState extends State<SitesPage> {

  @override
  Widget build(BuildContext context) {
    var _scaffoldKey = new GlobalKey<ScaffoldState>();

    return Consumer<DbRepo>(
      builder: (context, repo, child) => ResponsiveListScaffold.builder(
      scaffoldKey: _scaffoldKey,
      detailBuilder: (BuildContext context, int index, bool tablet) {
        //final item = _items[index];
        final site = widget.sites[index];
        return DetailsScreen(
          body: _buildDetailsBody(site, tablet),
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
        emptyItems: Center(child: Text("No sites found")),
        tabletItemNotSelected: Center(child: Text("No sites selected")),

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
          'Sites',
          style: CustomTextStyles.appThemeLightHeaderTitles,
        ),
        elevation: 0.0,
      ),
      itemCount: repo.companies?.length ?? 0,
      itemBuilder: (BuildContext context, int index) {
        final i = widget.sites[index];
        return ListTile(
          leading: Text(i.siteName, style: CustomTextStyles.appThemeLightMenuTitles,),
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

  _buildDetailsBody(Site masterItem, bool isTablet) {
    return SiteDetailsScreen(
      site: masterItem,
      tablet: isTablet,
    );
  }
}
