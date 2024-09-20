import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wallet"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 130,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                (BoxShadow(
                  color: Colors.grey,
                  blurRadius: 10,
                )),
              ],
            ),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Balance Amount",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "₹ 85.00",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Referral Bonus"),
                    Text(
                      "₹ 10.00",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                child: Row(
                  children: [
                    Text(
                      "REFER & EARN",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: Text(
              "Recent Activity",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 130,
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
                  Text("25-Oct-2018"),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Referral Bouns - 1242011",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "₹60",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text("Expiration Date : 25-Apr-2019"),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            height: 130,
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
                  Text("25-Apr-2018"),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Referral Bouns - 1242011",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "₹15",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text("Expiration Date : 25-Apr-2019"),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
