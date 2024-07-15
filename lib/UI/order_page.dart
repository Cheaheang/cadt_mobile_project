import 'package:cadt_mobile_project/component/card.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Food delivery',
              style: TextStyle(fontSize: 12),
            ),
            Text(
              'Curent location',
              style: TextStyle(fontSize: 8),
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
      body: SingleChildScrollView(
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              YourClothWidget(
                  rate: 4.4,
                  price: 32.2,
                  img: "assets/demSam.jpg",
                  title: "Dim sam",
                  des:
                      "Step into a world of exquisite flavors and delightful bites with our authentic dim sum offerings. Perfect for any time of the day, our dim sum selection is crafted to bring you the best of traditional Chinese cuisine, right at your fingertips.")
            ],
          ),
        ),
      ),
    );
  }
}
