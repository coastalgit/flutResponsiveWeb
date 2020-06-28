import 'package:flutter/material.dart';
import 'package:flutterresponsiveweb/company.dart';
import 'package:flutterresponsiveweb/customtheme.dart';
import 'package:flutterresponsiveweb/site.dart';

class SiteDetailsScreen extends StatelessWidget {
  const SiteDetailsScreen({
    Key key,
    @required this.site,
    //@required this.row,
    @required this.tablet,
//    @required this.onDelete,
//    @required this.onChanged,
  })  : super(key: key);

  final Site site;
  //final String row;
  final bool tablet;

//  final VoidCallback onDelete;
//  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: !tablet,
        backgroundColor: Colors.orange.shade800,
        title: Text(
          this.site.siteName,
          style: CustomTextStyles.appThemeLightHeaderTitles,
        ),

        actions: [

/*
          IconButton(
            icon: Icon(Icons.share),
//            onPressed: () {
//              onChanged(row + " " + DateTime.now().toString());
//            },
            onPressed: () {
              return null;
            },
          ),
*/
          IconButton(
            icon: Icon(Icons.refresh),
            //onPressed: onDelete,
            onPressed: null,
          ),
        ],
      ),
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
      body: Container(
        child: Center(
          //child: Text("Item: $row", style: CustomTextStyles.appThemeLightMenuTitles,),
          child: Column(
            children: [
              Text("Site Id: "+site.siteId, style: CustomTextStyles.appThemeLightMenuTitles,),
              Text("Location: "+site.siteLocation, style: CustomTextStyles.appThemeLightMenuTitles,),
            ],
          ),
        ),
      ),
    );
  }
}
