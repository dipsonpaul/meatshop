import 'package:fish__app/singlepro2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class selectcut extends StatelessWidget {
  var mname = ["Curry Cut (with skin)", "Fry Cut", "Customize"];
  var desc = "Gross wt. approx. 500g | Net wt. 500g";
  var price = "349.00 / 500g";
  var imgmeat = [
    "asset/image/currycut.jpeg",
    "asset/image/frryyycut.jpeg",
    "asset/image/cutomize.jpeg"
  ];
  var wname = ["Whole (cleaned)", "Whole (not cleaned)"];
  var wimgmeat = ["asset/image/cleared.jpeg", "asset/image/notcleared.jpeg"];

  selectcut({super.key});

  Future<void> cutt(String selectedCut, BuildContext context) async {
    SharedPreferences share = await SharedPreferences.getInstance();
    await share.setString("selected_cut", selectedCut);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SingleProduct()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select your cut",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Meat",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: mname.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: Image.asset("${imgmeat[index]}",
                        fit: BoxFit.cover, width: 60),
                    title: Text("${mname[index]}"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gross wt. approx. 500g | Net wt. 500g"),
                        Text("349.00 / 500g",
                            style: TextStyle(color: Colors.green)),
                      ],
                    ),
                    onTap: () {
                      cutt(mname[index], context);
                    },
                  );
                })),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Whole Fish",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: wname.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: Image.asset("${imgmeat[index]}",
                        fit: BoxFit.cover, width: 60),
                    title: Text("${wname[index]}"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Gross wt. approx. 500g | Net wt. 500g"),
                        Text("349.00 / 500g",
                            style: TextStyle(color: Colors.green)),
                      ],
                    ),
                    onTap: () {
                      cutt(wname[index], context);
                    },
                  );
                }))
          ],
        ),
      ),
    );
  }
}
