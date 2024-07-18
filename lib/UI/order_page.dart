import 'package:cadt_mobile_project/component/card.dart';
import 'package:cadt_mobile_project/provider/globalVariable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    ChangeTheme turnOnDarkMode = Get.put(ChangeTheme());
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: turnOnDarkMode.getDarkMode ? Colors.black : Colors.white,
        ),
        backgroundColor:
            turnOnDarkMode.getDarkMode ? Colors.white : Colors.black,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Food delivery',
              style: TextStyle(
                fontSize: 12,
                color: turnOnDarkMode.getDarkMode ? Colors.black : Colors.white,
              ),
            ),
            Text(
              'Curent location',
              style: TextStyle(
                fontSize: 8,
                color: turnOnDarkMode.getDarkMode ? Colors.black : Colors.white,
              ),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.favorite_border,
            color: Colors.pinkAccent,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Icon(
              Icons.card_travel,
              color: Colors.pinkAccent,
            ),
          )
        ],
      ),
      body: Container(
        color: turnOnDarkMode.getDarkMode ? Colors.white : Colors.black,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SearchBar(
                  // shape: ,
                  leading: Icon(
                    Icons.search,
                    color: Colors.pink[300],
                  ),
                  hintText: 'Search for shop and restaurant',
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.all(8),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      miniPromoteCard(image: "assets/promo.jpg"),
                      miniPromoteCard(image: "assets/promo2.jpg"),
                      miniPromoteCard(image: "assets/thirdCard.jpg"),
                      miniPromoteCard(image: "assets/promo.jpg"),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                  child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Your restaurants',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: turnOnDarkMode.getDarkMode
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      YourClothWidget(
                          rate: 4.4,
                          price: 32.2,
                          img: "assets/fast_food.jpg",
                          title: "Fast food",
                          des:
                              "Fast food refers to quick and convenient meals that are typically prepared and served rapidly in restaurants, takeaways. These foods are designed for fast preparation and consumption, often featuring items such as hamburgers, fries, fried chicken and beverages. "),
                      YourClothWidget(
                          rate: 4.4,
                          price: 32.2,
                          img: "assets/pan_cake.jpg",
                          title: "Pan cake",
                          des:
                              "A pancake is a flat, round, and often thin cake made from a batter that typically includes ingredients like flour, eggs, milk, and baking powder. The batter is poured onto a hot griddle or frying pan and cooked until it forms a golden-brown crust on both sides."),
                      YourClothWidget(
                          rate: 4.4,
                          price: 32.2,
                          img: "assets/demSam.jpg",
                          title: "Dim sam",
                          des:
                              "Step into a world of exquisite flavors and delightful bites with our authentic dim sum offerings. Perfect for any time of the day, our dim sum selection is crafted to bring you the best of traditional Chinese cuisine, right at your fingertips."),
                      YourClothWidget(
                          rate: 4.4,
                          price: 32.2,
                          img: "assets/takoyaki.jpg",
                          title: "Takoyaki",
                          des:
                              "Takoyaki is a popular Japanese street food consisting of small, round balls made from a wheat flour-based batter. The batter is typically mixed with diced or minced octopus (tako), tempura scraps (tenkasu), pickled ginger, and green onions"),
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
