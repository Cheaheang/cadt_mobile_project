import 'package:cadt_mobile_project/UI/order_page.dart';
import 'package:cadt_mobile_project/provider/globalVariable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget firstCard() {
  final ChangeTheme onTurnDarkMode = Get.put(ChangeTheme());
  return Container(
    width: double.infinity,
    height: 210,
    margin: EdgeInsets.all(4),
    decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
            image: AssetImage('assets/firstCard.jpg'), fit: BoxFit.cover)),
    child: Row(
      children: [
        Expanded(
            flex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: [
                Text(
                  'Food delivery',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Order food you love',
                  style: TextStyle(),
                ),
                SizedBox(
                  width: 140,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: onTurnDarkMode.getDarkMode
                              ? Colors.white
                              : Colors.black),
                      onPressed: () {
                        Get.to(OrderPage());
                      },
                      child: Row(
                        children: [
                          LimitedBox(
                              maxWidth: 100,
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
                )
              ],
            )),
        Expanded(
            flex: 1,
            child:
                // Image.asset(
                // 'assets/half1_1.jpg',
                // fit: BoxFit.cover,
                // )
                Text(''))
      ],
    ),
  );
}

Widget miniPromoteCard({required String image}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          color: Colors.black,
          borderRadius: BorderRadius.circular(12)),
      width: 150,
      height: 180,
    ),
  );
}

class TextWidget extends StatelessWidget {
  const TextWidget(
      {super.key, required this.text, this.size, this.bold, this.color});
  final String text;
  final Color? color;
  final double? size;
  final FontWeight? bold;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size, fontWeight: bold),
    );
  }
}

class YourClothWidget extends StatelessWidget {
  const YourClothWidget(
      {super.key,
      required this.img,
      required this.price,
      required this.rate,
      required this.title,
      required this.des});
  final double rate;
  final double price;
  final String img;
  final String title;
  final String des;
  @override
  Widget build(BuildContext context) {
    ChangeTheme turnOnDarkMode = Get.put(ChangeTheme());
    return Column(children: [
      Container(
        width: 350,
        height: 480,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              color: turnOnDarkMode.getDarkMode
                  ? Colors.white
                  : const Color.fromARGB(255, 55, 54, 54),
              // color: Colors.green,
              child: Column(
                children: [
                  FittedBox(
                    fit: BoxFit.fill,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        img,
                        fit: BoxFit.cover,
                        height: 200,
                        width: 340,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextWidget(
                              text: title,
                              size: 24,
                              bold: FontWeight.bold,
                              color: turnOnDarkMode.getDarkMode
                                  ? Colors.black
                                  : Colors.white,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.blueAccent,
                                  size: 16,
                                ),
                                TextWidget(
                                  text: rate.toString(),
                                  bold: FontWeight.bold,
                                  color: turnOnDarkMode.getDarkMode
                                      ? Colors.black
                                      : Colors.white,
                                  size: 12,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextWidget(
                                text: des,
                                size: 12,
                                color: turnOnDarkMode.getDarkMode
                                    ? Colors.black
                                    : Colors.white,
                              ),
                              TextWidget(
                                text: "\$" + price.toString() + " Delivery fee",
                                color: turnOnDarkMode.getDarkMode
                                    ? Colors.black
                                    : Colors.white,
                                bold: FontWeight.bold,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ),
      ),
    ]);
  }
}
