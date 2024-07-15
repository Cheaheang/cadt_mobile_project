import 'package:cadt_mobile_project/UI/account_page.dart';
import 'package:cadt_mobile_project/UI/home_page.dart';
import 'package:cadt_mobile_project/UI/search_page.dart';
import 'package:cadt_mobile_project/UI/shops_page.dart';
import 'package:flutter/material.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int currentPageIndex = 1;
  bool home = false;
  bool shop = false;
  bool search = false;
  bool account = false;
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            if (currentPageIndex == 0) {
              home = true;
              shop = false;
              search = false;
              account = false;
            }
            if (currentPageIndex == 1) {
              home = false;
              shop = true;
              search = false;
              account = false;
            }
            if (currentPageIndex == 2) {
              home = false;
              shop = false;
              search = true;
              account = false;
            }
            if (currentPageIndex == 3) {
              home = false;
              shop = false;
              search = false;
              account = true;
            }
          });
        },
        selectedIndex: currentPageIndex,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        destinations: <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home, color: home ? Colors.pink : Colors.grey),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.storefront_outlined,
              color: shop ? Colors.pink : Colors.grey,
            ),
            label: 'Shops',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.search,
              color: search ? Colors.pink : Colors.grey,
            ),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.account_circle,
              color: account ? Colors.pink : Colors.grey,
            ),
            label: 'Account',
          ),
        ],
      ),
      body: <Widget>[
        /// Home page
        HomePage(),

        /// Notifications page
        ShopsPage(),

        /// Messages page
        SearchPage(),

        AccountPage()
      ][currentPageIndex],
    );
  }
}