import 'package:fish__app/catagerory.dart';
import 'package:fish__app/maincat.dart';
import 'package:fish__app/maincatogoryess.dart';
import 'package:fish__app/mainpage.dart';
import 'package:fish__app/settings.dart';
import 'package:fish__app/socialloginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class make extends StatefulWidget {
  final int initialIndex;
  make({super.key, required this.initialIndex});

  @override
  State<make> createState() => _makeState();
}

class _makeState extends State<make> {
  late int selectedIndex;

  List<Widget> widgetOptions = <Widget>[
    FPage(),
    cat2(),
    settinggggg(),
  ];
  @override
  void initState() {
    super.initState();
    selectedIndex = widget.initialIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            flexibleSpace: Container(
              child: Column(
                children: [
                  Image.asset("asset/image/1024.png", scale: 19),
                ],
              ),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => tabcat()));
                  },
                  icon: Icon(Icons.shopping_cart))
            ],
            backgroundColor: Colors.blue,
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Dipson Paul"),
                  accountEmail: Text("dips@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage("asset/image/rabbit.jpeg"),
                  ),
                ),
                Column(
                  children: [
                    ExpansionTile(
                      title: Text("ALL Products"),
                      leading: Icon(Icons.face_retouching_natural_sharp),
                      children: [
                        ListTile(
                          title: Text("Sea Fish"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Backwater Fish"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Fresh Water Fish"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Seer Fish"),
                          onTap: () {},
                        )
                      ],
                    ),
                    ListTile(
                        leading: Icon(Icons.favorite),
                        title: Text("My Favorites"),
                        onTap: () {}),
                    ExpansionTile(
                      title: Text("My Order Status"),
                      leading: Icon(Icons.shopping_cart),
                      children: [
                        ListTile(
                          title: Text("Order Status"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Wallet"),
                          onTap: () {},
                        ),
                        ListTile(
                          title: Text("Profile"),
                          onTap: () {},
                        )
                      ],
                    ),
                    ListTile(
                        leading: Icon(Icons.sell),
                        title: Text("Offers"),
                        onTap: () {}),
                    ListTile(
                        leading: Icon(Icons.local_library),
                        title: Text("Refer & Earn"),
                        onTap: () {}),
                    ListTile(
                        leading: Icon(Icons.menu_book),
                        title: Text("Recipes"),
                        onTap: () {}),
                    ListTile(
                        leading: Icon(Icons.forum),
                        title: Text("FAQ"),
                        onTap: () {}),
                    ListTile(
                        leading: Icon(Icons.report),
                        title: Text("About Us"),
                        onTap: () {}),
                    ListTile(
                        leading: Icon(Icons.call),
                        title: Text("Contact Us"),
                        onTap: () {}),
                    ListTile(
                        leading: Icon(Icons.logout_rounded),
                        title: Text("Logout"),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => sociallogin()));
                        })
                  ],
                )
              ],
            ),
          ),
          body: Center(
            child: widgetOptions.elementAt(selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.category), label: "Categories"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings")
            ],
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.grey,
            currentIndex: selectedIndex,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.blue,
            onTap: _onItemTapped,
            elevation: 5,
          )),
    );
  }
}
