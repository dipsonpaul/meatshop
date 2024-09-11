import 'package:fish__app/deliveradd.dart';
import 'package:flutter/material.dart';

class delereg extends StatefulWidget {
  const delereg({super.key});

  @override
  State<delereg> createState() => _deleregState();
}

class _deleregState extends State<delereg> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Delivery Address",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 15,
            child: Container(
              child: SingleChildScrollView(
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  (BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                  )),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: null,
                                        label: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: 'City ',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                text: '*',
                                                style: TextStyle(
                                                    color: Colors.amber,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your city';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: null,
                                        label: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: 'Flat no,building name',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                text: '*',
                                                style: TextStyle(
                                                    color: Colors.amber,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your Flat no';
                                        }
                                        return null;
                                      },
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelText: null,
                                                label: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                          text: 'Pincode',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black)),
                                                      TextSpan(
                                                        text: '*',
                                                        style: TextStyle(
                                                            color: Colors.amber,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter your pincode';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelText: null,
                                                label: RichText(
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                          text: 'State',
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .black)),
                                                      TextSpan(
                                                        text: '*',
                                                        style: TextStyle(
                                                            color: Colors.amber,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return 'Please enter your State';
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                          label: Text(
                                        "Landmark(optional)",
                                        style: TextStyle(fontSize: 13),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  (BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 10,
                                  ))
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: null,
                                        label: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: 'Name',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                text: '*',
                                                style: TextStyle(
                                                    color: Colors.amber,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your name';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextFormField(
                                      decoration: InputDecoration(
                                        labelText: null,
                                        label: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                  text: 'Moblie Number',
                                                  style: TextStyle(
                                                      color: Colors.black)),
                                              TextSpan(
                                                text: '*',
                                                style: TextStyle(
                                                    color: Colors.amber,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter your Moblie Number';
                                        }
                                        return null;
                                      },
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                          label: Text(
                                        "Alternate Contact Number (optional)",
                                        style: TextStyle(fontSize: 13),
                                      )),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: SizedBox(
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true) {
                      Navigator.pop(context, deladdress());
                    }
                  },
                  child: Text(
                    "Checkout",
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
            ),
          )
        ],
      ),
    );
  }
}
