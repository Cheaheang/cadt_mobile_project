import 'package:cadt_mobile_project/component/text.dart';
import 'package:cadt_mobile_project/provider/globalVariable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final ChangeTheme turnOnDarkMode = Get.put(ChangeTheme());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor:
              turnOnDarkMode.getDarkMode ? Colors.white : Colors.black,
          bottom: const TabBar(tabs: [
            Tab(
              text: 'Restaurants',
            ),
            Tab(
              text: 'Shops',
            )
          ]),
          title: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 21),
            child: SearchBar(
              elevation: null,
            ),
          ),
        ),
        body: TabBarView(children: [RestaurantsScreen(), ShopsScreen()]),
      ),
    );
  }
}

class RestaurantsScreen extends StatefulWidget {
  const RestaurantsScreen({super.key});

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  ChangeTheme turnOnDarkMode = Get.put(ChangeTheme());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: turnOnDarkMode.getDarkMode ? Colors.white : Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.replay_sharp,
                          size: 28,
                        ),
                        textComponent(
                            text: 'Recent Searches',
                            color: turnOnDarkMode.getDarkMode
                                ? Colors.black
                                : Colors.white,
                            size: 18,
                            bold: FontWeight.bold),
                      ],
                    ),
                    textComponent(text: 'Clear All', color: Colors.pinkAccent)
                  ],
                ),
                Wrap(
                  children: [
                    textBuble('KFC'),
                    textBuble('Burger king'),
                    textBuble('Pizza company'),
                    textBuble('Doriri'),
                    textBuble('Texas burger'),
                    textBuble('Carl\'s jr'),
                    textBuble('Domino pizza'),
                    textBuble('Papajohn'),
                    textBuble('Starbuck'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.trending_up_sharp, size: 28),
                    textComponent(
                        text: 'Popular searches',
                        size: 18,
                        color: turnOnDarkMode.getDarkMode
                            ? Colors.black
                            : Colors.white,
                        bold: FontWeight.bold),
                  ],
                ),
                Wrap(
                  children: [
                    textBuble('KFC'),
                    textBuble('Burger king'),
                    textBuble('Pizza company'),
                    textBuble('Doriri'),
                    textBuble('Texas burger'),
                    textBuble('Carl\'s jr'),
                    textBuble('Domino pizza'),
                    textBuble('Papajohn'),
                    textBuble('Starbuck'),
                    textBuble('Brown'),
                    textBuble('Chhicken pop'),
                    textBuble('7 Eleven'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShopsScreen extends StatefulWidget {
  const ShopsScreen({super.key});

  @override
  State<ShopsScreen> createState() => _ShopsScreenState();
}

class _ShopsScreenState extends State<ShopsScreen> {
  ChangeTheme turnOnDarkMode = Get.put(ChangeTheme());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: turnOnDarkMode.getDarkMode ? Colors.white : Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.replay_sharp,
                          size: 28,
                        ),
                        textComponent(
                            color: turnOnDarkMode.getDarkMode
                                ? Colors.black
                                : Colors.white,
                            text: 'Recent Searches',
                            size: 18,
                            bold: FontWeight.bold),
                      ],
                    ),
                    textComponent(text: 'Clear All', color: Colors.pinkAccent)
                  ],
                ),
                ListTile(
                  leading: Icon(Icons.replay_outlined,
                      color: turnOnDarkMode.getDarkMode
                          ? Colors.black
                          : Colors.white),
                  title: Text(
                    'Pizza',
                    style: TextStyle(
                        color: turnOnDarkMode.getDarkMode
                            ? Colors.black
                            : Colors.white),
                  ),
                  trailing: Icon(
                    Icons.close,
                    color: turnOnDarkMode.getDarkMode
                        ? Colors.black
                        : Colors.white,
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.replay_outlined,
                      color: turnOnDarkMode.getDarkMode
                          ? Colors.black
                          : Colors.white),
                  title: Text(
                    'Burger',
                    style: TextStyle(
                        color: turnOnDarkMode.getDarkMode
                            ? Colors.black
                            : Colors.white),
                  ),
                  trailing: Icon(Icons.close,
                      color: turnOnDarkMode.getDarkMode
                          ? Colors.black
                          : Colors.white),
                ),
                ListTile(
                  leading: Icon(Icons.replay_outlined,
                      color: turnOnDarkMode.getDarkMode
                          ? Colors.black
                          : Colors.white),
                  title: Text(
                    'Sandwich',
                    style: TextStyle(
                        color: turnOnDarkMode.getDarkMode
                            ? Colors.black
                            : Colors.white),
                  ),
                  trailing: Icon(Icons.close,
                      color: turnOnDarkMode.getDarkMode
                          ? Colors.black
                          : Colors.white),
                ),
                textComponent(
                    text: 'Popular searches',
                    size: 18,
                    bold: FontWeight.bold,
                    color: turnOnDarkMode.getDarkMode
                        ? Colors.black
                        : Colors.white),
                Wrap(
                  children: [
                    textBuble('KFC'),
                    textBuble('Burger king'),
                    textBuble('Pizza company'),
                    textBuble('Doriri'),
                    textBuble('Texas burger'),
                    textBuble('Carl\'s jr'),
                    textBuble('Domino pizza'),
                    textBuble('Papajohn'),
                    textBuble('Starbuck'),
                    textBuble('Brown'),
                    textBuble('Chhicken pop'),
                    textBuble('7 Eleven'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
