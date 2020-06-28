import 'package:flutter/material.dart';
import 'package:flutterresponsiveweb/company.dart';
import 'package:flutterresponsiveweb/customtheme.dart';
import 'package:flutterresponsiveweb/sitespage.dart';

class CompanyDetailsScreen extends StatelessWidget {
  const CompanyDetailsScreen({
    Key key,
    @required this.company,
    //@required this.row,
    @required this.tablet,
//    @required this.onDelete,
//    @required this.onChanged,
  })  : super(key: key);

  final Company company;
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
          this.company.companyName,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Company Id: "+company.companyId, style: CustomTextStyles.appThemeLightDetailText,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Sites: "+company.sites.length.toString(), style: CustomTextStyles.appThemeLightDetailText,),
              ),
              RaisedButton(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text('View Sites', style: CustomTextStyles.appThemeLightButtonText),
                ),
                color: Colors.blueGrey.shade800,
                onPressed: () => navigateToSitesView(context),
              ),
            ],
          ),
        ),
      ),
    );

  }

  navigateToSitesView(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) =>
          SitesPage(
            sites: company.sites,
          ),
    ));

  }

}
