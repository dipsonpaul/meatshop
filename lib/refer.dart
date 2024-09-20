import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class Refer extends StatelessWidget {
  const Refer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Refer & Earn",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Earn upto Rs 1000",
                style: TextStyle(
                    color: const Color.fromARGB(255, 0, 93, 169),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Image.asset("asset/image/image@3x.png"),
            SizedBox(
              height: 25,
            ),
            Text(
              "Get Rs 100 when your Friends completes",
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              " his/her first purchase with us",
              style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "Your Code",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("HFDB5567"),
                ImageIcon(AssetImage("asset/image/Shape@2x.png")),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            DottedBorder(
                child: Container(
              height: 170,
              width: 400,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Text("Your Link",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "http://www.healthfish.com/hfdb5567-e5",
                    style: TextStyle(color: Colors.blue),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Image.asset("asset/image/social.png")
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
