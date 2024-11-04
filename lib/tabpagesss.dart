import 'package:fish__app/catagerory.dart';
import 'package:fish__app/deliveradd.dart';
import 'package:fish__app/deliveryreg.dart';
import 'package:fish__app/mycart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class tabcat extends StatefulWidget {
  const tabcat({super.key});

  @override
  State<tabcat> createState() => _tabcatState();
}

class _tabcatState extends State<tabcat> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Fresh Fish",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                color: Colors.white,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => cart()));
                },
                icon: Icon(Icons.shopping_cart),
                color: Colors.white,
              )
            ],
            bottom: PreferredSize(
                child: Container(
                  color: Colors.white,
                  child: TabBar(
                      onTap: (selectedTabIndex) {},
                      labelColor: Colors.black,
                      isScrollable: true,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: Color.fromARGB(255, 15, 126, 217),
                      indicatorPadding: EdgeInsets.all(10),
                      tabs: [
                        Tab(
                          child: Center(child: Text('SEA FISH')),
                        ),
                        Tab(
                          child: Center(child: Text('Fresh Water Fish')),
                        ),
                        Tab(
                          child: Text('Meat & Poultry'),
                        ),
                        Tab(
                          child: Text('Others'),
                        ),
                      ]),
                ),
                preferredSize: Size.fromHeight(50)),
          ),
          body: TabBarView(
            children: <Widget>[
              cat(),
              back(),
              back(),
              back(),
            ], //pagessss//
          )),
    );
  }
}
