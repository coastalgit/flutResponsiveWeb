import 'package:flutter/material.dart';
import 'package:flutterresponsiveweb/customtheme.dart';

class HomeDetailsScreen extends StatelessWidget {
  const HomeDetailsScreen({
    Key key,
    @required this.title,
    @required List<String> items,
    @required this.row,
    @required this.tablet,
//    @required this.onDelete,
//    @required this.onChanged,
  })  : _items = items,
        super(key: key);

  final String title;
  final List<String> _items;
  final String row;
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
          this.title,
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
            icon: Icon(Icons.delete),
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
          child: Text("Item: $row", style: CustomTextStyles.appThemeLightMenuTitles,),
        ),
      ),
    );
  }
}
