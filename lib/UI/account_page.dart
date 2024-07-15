import 'package:cadt_mobile_project/component/text.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        actions: [Icon(Icons.settings_outlined)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),
            Container(
              color: Color.fromARGB(255, 235, 232, 232),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textComponent(text: 'Chea', size: 24),
                        textComponent(
                            text: 'View profile', size: 18, color: Colors.pink),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      width: 2,
                                      color:
                                          Color.fromARGB(255, 208, 208, 208)),
                                  color: Colors.white,
                                ),
                                height: 102,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.receipt_outlined,
                                      color: Colors.pink,
                                    ),
                                    textComponent(text: 'Orders'),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 102,
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      width: 2,
                                      color:
                                          Color.fromARGB(255, 208, 208, 208)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.favorite_border,
                                      color: Colors.pink,
                                    ),
                                    textComponent(text: 'Favourites'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      width: 2,
                                      color:
                                          Color.fromARGB(255, 208, 208, 208)),
                                  color: Colors.white,
                                ),
                                height: 102,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.payment,
                                      color: Colors.pink,
                                    ),
                                    textComponent(text: 'Payments'),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      width: 2,
                                      color:
                                          Color.fromARGB(255, 208, 208, 208)),
                                  color: Colors.white,
                                ),
                                height: 102,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.location_on_outlined,
                                      color: Colors.pink,
                                    ),
                                    textComponent(text: 'Address'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 18.0),
                      child: textComponent(
                          text: 'Perks for you',
                          bold: FontWeight.bold,
                          size: 20),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.add_to_photos_rounded,
                        color: Colors.pink,
                      ),
                      title: Text('Become a pro'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    const ListTile(
                      leading: Icon(Icons.auto_awesome, color: Colors.pink),
                      title: Text('Panda rewards'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    const ListTile(
                      leading: Icon(Icons.receipt, color: Colors.pink),
                      title: Text('Vouchers'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    const ListTile(
                      leading: Icon(Icons.redeem_outlined, color: Colors.pink),
                      title: Text('Invite friends'),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                          width: double.infinity,
                          height: 62,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2, color: Colors.pinkAccent),
                              borderRadius: BorderRadius.circular(12)),
                          child: textComponent(
                              text: 'Log out', color: Colors.pinkAccent)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        alignment: Alignment.center,
                        child: textComponent(
                            text: 'Version 24.16.0',
                            size: 16,
                            color: Colors.grey),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
