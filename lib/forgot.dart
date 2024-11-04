
import 'package:flutter/material.dart';

class forgotpage extends StatelessWidget {
  const forgotpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Forgot Password",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        backgroundColor: Colors.lightBlue.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              child:
                  const Image(image: AssetImage("asset/image/unnamed-1.png")),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Forgot Password ?",
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            const Text(
              "We Will Send you instuctions to reset your password",
              style: TextStyle(fontSize: 13),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: Icon(Icons.email),
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => forgot2()));
                      },
                      child: const Text(
                        "NEXT",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: const ButtonStyle(
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero)),
                          backgroundColor: MaterialStatePropertyAll(
                            Colors.deepOrange,
                          )),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class forgot2 extends StatelessWidget {
  const forgot2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Text(
              "Enter Security Code",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Text(
                      "Enter the 6 digit securtity code we just sent you to verify your account"),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 50),
              child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                      hintText: "Enter your code",
                      border: OutlineInputBorder())),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "RESET PASSWORD",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: const ButtonStyle(
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero)),
                        backgroundColor: MaterialStatePropertyAll(
                          Colors.deepOrange,
                        )),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
