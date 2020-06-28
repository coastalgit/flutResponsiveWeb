import 'package:flutterresponsiveweb/appconstants.dart';
import 'package:flutterresponsiveweb/webuser.dart';

class MenuPageManager{

//  List<String> menu1Items;
//  List<String> menu2Items;

  //Root
  List<String> menu1ItemsForUser(WebUser webUser){
    List<String> menuItems = List();
    if (webUser.role == kRoleEngineer){
      menuItems.add(kCompanies);
      menuItems.add(kSystem);
    }
    if (webUser.role == kRoleManager){
      menuItems.add(kCompanies);
    }
    return menuItems;
  }

  //Sites
  List<String> menu2ItemsForUser(WebUser webUser){
    List<String> menuItems = List();
    if (webUser.role == kRoleEngineer){
      menuItems.add(kSites);
      menuItems.add(kManagers);
      menuItems.add(kLicenses);
    }
    if (webUser.role == kRoleManager){
      menuItems.add(kSites);
      menuItems.add(kUsers);
    }
    return menuItems;
  }

}