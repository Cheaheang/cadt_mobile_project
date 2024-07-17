import 'package:cadt_mobile_project/component/text.dart';
import 'package:cadt_mobile_project/provider/globalVariable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopsPage extends StatefulWidget {
  const ShopsPage({super.key});

  @override
  State<ShopsPage> createState() => _ShopsPageState();
}

class _ShopsPageState extends State<ShopsPage> {
  final ChangeTheme turnOnDarkMode = Get.put(ChangeTheme());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            turnOnDarkMode.getDarkMode ? Colors.white : Colors.black,
        leading: Icon(Icons.location_on_outlined,
            color: turnOnDarkMode.getDarkMode ? Colors.black : Colors.white),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textComponent(
              text: '130 St 150',
              size: 20,
              bold: FontWeight.bold,
              color: turnOnDarkMode.getDarkMode ? Colors.black : Colors.white,
            ),
            textComponent(
              text: 'Phnom Penh',
              size: 12,
              color: turnOnDarkMode.getDarkMode ? Colors.black : Colors.white,
            )
          ],
        ),
        actions: const [
          Icon(Icons.favorite_border, color: Colors.pink),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(Icons.card_travel, color: Colors.pink),
          ),
        ],
      ),
      body: Theme(
        data: Theme.of(context).copyWith(
            colorScheme: turnOnDarkMode.getDarkMode
                ? ColorScheme.light()
                : ColorScheme.dark(),
            textTheme: Theme.of(context).textTheme.copyWith(
                  titleLarge: TextStyle(
                      color: turnOnDarkMode.getDarkMode
                          ? Colors.black
                          : Colors.white),
                  titleMedium: new TextStyle(
                      color: turnOnDarkMode.getDarkMode
                          ? Colors.black
                          : Colors.white),
                  displaySmall: new TextStyle(
                      color: turnOnDarkMode.getDarkMode
                          ? Colors.black
                          : Colors.white),
                )),
        child: Container(
          color: turnOnDarkMode.getDarkMode ? Colors.white : Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                      left: 16.0, right: 16, bottom: 12, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          flex: 9,
                          child: SearchBar(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromARGB(244, 255, 255, 255)),
                            leading: Icon(Icons.search),
                            hintText: 'Search for shops and product',
                          )),
                      Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.display_settings_rounded,
                            color: Colors.pinkAccent,
                          ))
                    ],
                  ),
                ),
                const Divider(),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.center,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 102,
                          height: 102,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 235, 232, 232),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://i.pinimg.com/474x/02/3b/3e/023b3e3ca534ae94a88cfc898b31e0cf.jpg'))),
                        ),
                        textComponent(
                            text: 'Groceries',
                            color: turnOnDarkMode.getDarkMode
                                ? Colors.black
                                : Colors.white)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 102,
                          height: 102,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 235, 232, 232),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://i.pinimg.com/564x/42/c5/c1/42c5c14cd6b0bc8385dc4a3301b1c6c0.jpg',
                                ),
                                fit: BoxFit.fill),
                          ),
                        ),
                        textComponent(
                            text: 'Beauty',
                            color: turnOnDarkMode.getDarkMode
                                ? Colors.black
                                : Colors.white)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 102,
                          height: 102,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 235, 232, 232),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://i.pinimg.com/564x/4b/da/36/4bda3620d81283b17dd145c4e6b05797.jpg'))),
                        ),
                        textComponent(
                            text: 'Beverage',
                            color: turnOnDarkMode.getDarkMode
                                ? Colors.black
                                : Colors.white)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 102,
                          height: 102,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 235, 232, 232),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://i.pinimg.com/564x/0c/ed/f7/0cedf7d7449bf151c6d6be80cdb7a8e7.jpg'))),
                        ),
                        textComponent(
                            text: 'Electronics',
                            size: 12,
                            color: turnOnDarkMode.getDarkMode
                                ? Colors.black
                                : Colors.white)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 102,
                          height: 102,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 235, 232, 232),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://i.pinimg.com/564x/2a/8e/93/2a8e9378de528fb86ca80794c43744f5.jpg'))),
                        ),
                        textComponent(
                            text: 'Sports & fashion',
                            size: 12,
                            color: turnOnDarkMode.getDarkMode
                                ? Colors.black
                                : Colors.white)
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 102,
                          height: 102,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: const Color.fromARGB(255, 235, 232, 232),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://i.pinimg.com/564x/b8/c5/68/b8c568c92e16f4552711ac5fbadc52a2.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                        textComponent(
                            text: 'View all shops',
                            size: 12,
                            color: turnOnDarkMode.getDarkMode
                                ? Colors.black
                                : Colors.white)
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textComponent(
                          text: 'Top Deals',
                          size: 24,
                          bold: FontWeight.bold,
                          color: turnOnDarkMode.getDarkMode
                              ? Colors.black
                              : Colors.white),
                      ListTile(
                        leading: Container(
                          width: 68,
                          height: 102,
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.network(
                            'https://i.pinimg.com/474x/dd/c8/f7/ddc8f7a908bcb0da5126d21f2e9cf1ee.jpg',
                          ),
                        ),
                        title: textComponent(
                            text: 'Chupa Chups', bold: FontWeight.bold),
                        subtitle: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Icon(Icons.timer),
                            textComponent(
                              text: '10min-25min',
                              size: 10,
                            ),
                            const Icon(Icons.motorcycle),
                            textComponent(
                              text: '\$1.12',
                              size: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                child: Wrap(
                                  children: [
                                    const Icon(Icons.discount),
                                    textComponent(
                                        text: '15% off \$10',
                                        color: Colors.black),
                                  ],
                                ))
                          ],
                        ),
                        trailing: const Icon(Icons.favorite_border),
                      ),
                      ListTile(
                        leading: Container(
                          width: 68,
                          height: 102,
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(12)),
                          child: Image.network(
                            'https://i.pinimg.com/474x/53/93/6d/53936d30b57e24603afe6858f94d41cc.jpg',
                          ),
                        ),
                        title: textComponent(
                            text: 'Burger king', bold: FontWeight.bold),
                        subtitle: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          children: [
                            const Icon(Icons.timer),
                            textComponent(
                              text: '10min-25min',
                              size: 10,
                            ),
                            const Icon(Icons.motorcycle),
                            textComponent(
                              text: '\$1.12',
                              size: 10,
                            ),
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white),
                                onPressed: () {},
                                child: Wrap(
                                  children: [
                                    const Icon(Icons.discount),
                                    textComponent(
                                        text: '15% off \$10',
                                        color: Colors.black),
                                  ],
                                ))
                          ],
                        ),
                        trailing: const Icon(Icons.favorite_border),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                  child: Container(
                    color: turnOnDarkMode.getDarkMode
                        ? Color.fromARGB(255, 235, 232, 232)
                        : const Color.fromARGB(255, 57, 56, 56),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textComponent(
                          text: 'Popular Shops',
                          size: 24,
                          color: turnOnDarkMode.getDarkMode
                              ? Colors.black
                              : Colors.white,
                          bold: FontWeight.bold),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Card(
                                  storename: '7 elevent',
                                  image:
                                      'https://i.pinimg.com/564x/9e/6b/fe/9e6bfeaa50e71777dac657c4aa1218b9.jpg'),
                              Card(
                                  storename: 'Texas',
                                  image:
                                      'https://i.pinimg.com/564x/cd/92/4f/cd924ffc84ad3812bd4cff04164111bf.jpg'),
                              Card(
                                  storename: 'Carl\'s Jr',
                                  image:
                                      'https://i.pinimg.com/564x/bb/0a/0e/bb0a0ebc8368db54047bddd37cf53390.jpg'),
                              Card(
                                  storename: 'Burger King',
                                  image:
                                      'https://i.pinimg.com/564x/bf/06/2f/bf062fe1c0af0a3890b71e46dc07753d.jpg'),
                            ],
                          )),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget Card({
  required String storename,
  required String image,
}) {
  final ChangeTheme turnOnDarkMode = Get.put(ChangeTheme());
  return FittedBox(
    fit: BoxFit.fitHeight,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          color: turnOnDarkMode.getDarkMode
              ? Color.fromARGB(241, 255, 250, 250)
              : Colors.black,
          borderRadius: BorderRadius.circular(12)),
      width: 90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 90,
            height: 94,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                    image: NetworkImage(image), fit: BoxFit.cover)),
          ),
          FittedBox(
              fit: BoxFit.contain,
              child: Text(
                storename,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: turnOnDarkMode.getDarkMode
                        ? Colors.black
                        : Colors.white),
              )),
          textComponent(
              text: '10-25 mins',
              size: 12,
              color: turnOnDarkMode.getDarkMode ? Colors.black : Colors.white)
        ],
      ),
    ),
  );
}
