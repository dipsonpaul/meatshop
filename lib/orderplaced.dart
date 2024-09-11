import 'package:fish__app/makingpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

class orderplace extends StatelessWidget {
  const orderplace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          height: 300,
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: 200,
                    child: LottieBuilder.asset(
                        "asset/animations/Animation - 1722941116085.json")
                    // LottieBuilder.network(
                    //     "https://lottie.host/0c62d00e-4bc0-435e-9db0-da9871806093/cho4OVqq4F.json"),
                    ),
                Text(
                  "Order Placed",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "TOTAL AMOUNT FOR ORDER ₹1,497",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text("Delivered by wed,Between 1:00 - 2:00 PM"),
        ),
        Divider(),
        Expanded(
          flex: 6,
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Alex Thomas"),
                  Text("Wigan greater manchester"),
                  Text("kochi,kerala,686767"),
                  Text("977447854"),
                  Divider(),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => make(
                                    initialIndex: 0,
                                  )));
                    },
                    child: Text(
                      "BACK TO HOME",
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
    ));
  }
}
