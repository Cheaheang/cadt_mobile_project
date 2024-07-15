import 'package:cadt_mobile_project/component/text.dart';
import 'package:flutter/material.dart';

class ShopsPage extends StatefulWidget {
  const ShopsPage({super.key});

  @override
  State<ShopsPage> createState() => _ShopsPageState();
}

class _ShopsPageState extends State<ShopsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.location_on_outlined),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textComponent(text: '130 St 150', size: 20, bold: FontWeight.bold),
            textComponent(text: 'Phnom Penh', size: 12)
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
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                    textComponent(text: 'Groceries')
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
                              'https://i.pinimg.com/564x/42/c5/c1/42c5c14cd6b0bc8385dc4a3301b1c6c0.jpg',
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                    textComponent(text: 'Beauty')
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
                    textComponent(text: 'Beverage')
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
                    textComponent(text: 'Electronics', size: 12)
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
                    textComponent(text: 'Sports & fashion', size: 12)
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
                    textComponent(text: 'View all shops', size: 12)
                  ],
                ),
              ],
            ),
            const Padding(
              padding:
                  EdgeInsets.only(left: 16.0, right: 16, bottom: 12, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(flex: 9, child: SearchBar()),
                  Expanded(flex: 1, child: Icon(Icons.display_settings_rounded))
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textComponent(
                      text: 'Top Deals', size: 24, bold: FontWeight.bold),
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
                                    text: '15% off \$10', color: Colors.black),
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
                                    text: '15% off \$10', color: Colors.black),
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
                color: const Color.fromARGB(255, 235, 232, 232),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textComponent(
                      text: 'Popular Shops', size: 24, bold: FontWeight.bold),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
