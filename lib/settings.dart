import 'package:fish__app/mycart.dart';
import 'package:fish__app/orders.dart';
import 'package:fish__app/seetingpages.dart';
import 'package:fish__app/socialloginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class sett extends StatelessWidget {
  sett({super.key});

  var name = [
    "My profile",
    "My orders",
    "Wallet",
    "Refer & Earn",
    "About Us",
    "FAQ",
    "Help",
    "Contact Us",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 1.45,
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: ListView.builder(
                    itemCount: name.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Padding(
                            padding: const EdgeInsets.all(1),
                            child: Container(
                              color: Colors.white,
                              height: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(15),
                                child: Row(
                                  children: [
                                    Text("${name[index]}"),
                                    Spacer(),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      );
                    }),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => sociallogin()));
                        },
                        child: Text(
                          "LOGOUT",
                          style: TextStyle(color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

class settinggggg extends StatelessWidget {
  const settinggggg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: 500,
              decoration: BoxDecoration(border: Border.all(width: 0.1)),
              child: ListView(
                children: [
                  ListTile(
                    title: Text('My Profile'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => profile()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text('My Orders'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Orders()));
                    },
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Wallet'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Refer & Earn'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    title: Text('About Us'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    title: Text('FAQ'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Help'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    title: Text('Contact Us'),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  Divider(),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                            title: Text("ARE YOU SURE ?"),
                            content: Text("Keep Shopping with us"),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                sociallogin()));
                                  },
                                  child: Container(
                                    child: Text("Logout"),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  child: Text("Cancel"))
                            ]));
              },
              child: Text('LOGOUT'),
            ),
          ],
        ),
      ),
    );
  }
}
