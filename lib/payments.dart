import 'package:fish__app/orderplaced.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class Pay extends StatefulWidget {
  const Pay({super.key});

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  String? val;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Payments",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          title: const Text("Online Payments"),
                          leading: Radio(
                            value: "online",
                            groupValue: val,
                            onChanged: (String? value) {
                              setState(() {
                                val = value;
                              });
                            },
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          title: const Text("Cash on Delivery"),
                          leading: Radio(
                            value: "cod",
                            groupValue: val,
                            onChanged: (String? value) {
                              setState(() {
                                val = value;
                              });
                            },
                          ),
                        ),
                        const Divider(),
                        ListTile(
                          title: const Text("Payu Money"),
                          leading: Radio(
                            value: "payu",
                            groupValue: val,
                            onChanged: (String? value) {
                              setState(() {
                                val = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => pay2()),
                      );
                    },
                    child: const Text(
                      "CONTINUE",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 244, 73, 5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class pay2 extends StatelessWidget {
  const pay2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Payments"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
                height: 100,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    (BoxShadow(
                      color: Colors.grey,
                      blurRadius: 7,
                    ))
                  ],
                ),
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text("Payment Confirmation"),
                      Text("Are You sure Want to proceed with COD")
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => orderplace()));
                      },
                      child: Text(
                        "PLACE ORDER",
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
          ),
        ],
      ),
    );
  }
}
