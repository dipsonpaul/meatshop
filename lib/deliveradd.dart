import 'package:fish__app/deliveryreg.dart';
import 'package:fish__app/payments.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class deladdress extends StatefulWidget {
  deladdress({super.key});

  @override
  State<deladdress> createState() => _deladdressState();
}

class _deladdressState extends State<deladdress> {
  bool value1 = false;
  bool value2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Delivery address",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          child: Column(
            children: [
              Expanded(
                child: Container(
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
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Alex Thomas"),
                              Text("Wigan greater manchester"),
                              Text("kochi,kerala,686767"),
                              Text("977447854"),
                              SizedBox(
                                height: 25,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      delereg()));
                                        },
                                        child: Text(
                                          "Change or update address",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        style: ButtonStyle(
                                            elevation:
                                                MaterialStatePropertyAll(10),
                                            shape: MaterialStatePropertyAll<
                                                    RoundedRectangleBorder>(
                                                RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(-90),
                                            )),
                                            backgroundColor:
                                                MaterialStatePropertyAll(
                                                    Colors.blue)),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              (BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                              )),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                  value: value1,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      value1 = value!;
                                    });
                                  }),
                              Text("Use as my default billing address")
                            ],
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              (BoxShadow(
                                color: Colors.grey,
                                blurRadius: 10,
                              )),
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Checkbox(
                                  value: value2,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      value2 = value!;
                                    });
                                  }),
                              Text("Do you want a printed receipt")
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Pay()));
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
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
