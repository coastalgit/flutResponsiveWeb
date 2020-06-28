//todo list of items with crud funcs
// also implement a stream subscriber and streambuilder on main page

import 'package:flutterresponsiveweb/company.dart';
import 'package:flutterresponsiveweb/site.dart';

class DbRepo{

  List<Company> _companies;

  List<Company> get companies => _companies;

  DbRepo(){
    _buildMockData();
  };

  _buildMockData(){
    Site site1 = Site(siteId: 'S1001', siteName: 'Demo Site A', siteLocation: 'Auckland');
    Site site2 = Site(siteId: 'S1002', siteName: 'Demo Site B', siteLocation: 'Barcelona');
    Company company1 = Company(companyId: 'C001', companyName: 'Demo Company 1', sites: [site1,site2]);
    _companies.add(company1);

    site1 = Site(siteId: 'S2001', siteName: 'Demo Site C', siteLocation: 'Cardiff');
    site2 = Site(siteId: 'S2002', siteName: 'Demo Site D', siteLocation: 'Denver');
    Company company2 = Company(companyId: 'C002', companyName: 'Demo Company 2', sites: [site1,site2]);
    _companies.add(company2);
  }
}