import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Orders",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Recent Orders",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: 600,
                  decoration: BoxDecoration(color: Colors.grey),
                  child: Center(
                      child: Text(
                    "No orders Available",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
