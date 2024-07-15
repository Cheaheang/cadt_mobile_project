import 'package:cadt_mobile_project/UI/order_page.dart';
import 'package:cadt_mobile_project/component/card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('cheaheang')),
        leading: Icon(
          Icons.account_circle_sharp,
          color: Colors.pinkAccent,
          size: 32,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.card_travel,
              color: Colors.pinkAccent,
              size: 32,
            ),
          )
        ],
      ),
      body: Container(
        color: Color.fromRGBO(224, 228, 227, 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/show.jpg'),
                        fit: BoxFit.cover)),
                width: double.infinity,
                alignment: Alignment.bottomLeft,
                height: 220,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          verticalDirection: VerticalDirection.down,
                          children: [
                            Text(
                              'Hi cheaheang',
                              style: TextStyle(fontSize: 16),
                            ),
                            LimitedBox(
                              maxWidth: 80,
                              maxHeight: 220,
                              child: Text(
                                'Beat the heat with our sizzling deals! Get 20% off all our fresh salads and juicy burgers all week long.    Perfect for a light and delicious summer lunch or dinner. Don\'t miss out, this offer ends [22/03/2003]!',
                                style: TextStyle(fontSize: 8),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(''),
                      flex: 1,
                    ),
                  ],
                ),
              ),
              SearchBar(
                leading: Icon(
                  Icons.search,
                  color: Colors.pink[300],
                ),
                hintText: 'Search for shop and restaurant',
              ),
              SizedBox(
                height: 10,
              ),
              firstCard(),
              Container(
                height: 280,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Container(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Shops',
                                  style: TextStyle(
                                      fontSize: 21,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  'Groceries and more',
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.white),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Get.to(OrderPage());
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        LimitedBox(
                                            maxWidth: 90,
                                            child: Text(
                                              'Order now',
                                              style: TextStyle(fontSize: 12),
                                            )),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.pink[300],
                                        )
                                      ],
                                    )),
                              ],
                            ),
                          ),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/secondCard.jpg'),
                                  fit: BoxFit.cover),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12)),
                          margin:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                        )),
                    Expanded(
                        flex: 1,
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 4, vertical: 8),
                          color: Color.fromRGBO(224, 228, 227, 1),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 2,
                                  child: Container(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            'Pick-Up',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                          Text(
                                            'Get 25% off',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/thirdCard.jpg'),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    margin: EdgeInsets.only(bottom: 4),
                                  )),
                              Expanded(
                                  flex: 1,
                                  child: Container(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 4.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Panda mart',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'Essential deliveried',
                                            style: TextStyle(fontSize: 8),
                                          ),
                                        ],
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/forthCard.jpg'),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    margin: EdgeInsets.only(top: 4),
                                  ))
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
