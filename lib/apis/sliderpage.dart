// import 'package:fish__app/apis/spageedit.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class SelectCut extends StatelessWidget {
//   final List<String> mname = ["Curry Cut (with skin)", "Fry Cut", "Customize"];
//   final String desc = "Gross wt. approx. 500g | Net wt. 500g";
//   final String price = "349.00 / 500g";
//   final List<String> imgmeat = [
//     "asset/image/currycut.jpeg",
//     "asset/image/frryyycut.jpeg",
//     "asset/image/cutomize.jpeg"
//   ];
//   final List<String> wname = ["Whole (cleaned)", "Whole (not cleaned)"];
//   final List<String> wimgmeat = ["asset/image/cleared.jpeg", "asset/image/notcleared.jpeg"];

//   SelectCut({super.key});

//   // Save selected value to SharedPreferences and navigate to the second screen
//   Future<void> saveAndNavigate(String selectedCut, BuildContext context) async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     await prefs.setString("selected_cut", selectedCut);
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => SecondScreen()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Select your cut",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: Colors.blue,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(15),
//               child: Text(
//                 "Meat",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: mname.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   onTap: () => saveAndNavigate(mname[index], context),
//                   leading: Image.asset(imgmeat[index], fit: BoxFit.cover, width: 60),
//                   title: Text(mname[index]),
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(desc),
//                       Text(price, style: TextStyle(color: Colors.green)),
//                     ],
//                   ),
//                 );
//               },
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15),
//               child: Text(
//                 "Whole Fish",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             ListView.builder(
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               itemCount: wname.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   onTap: () => saveAndNavigate(wname[index], context),
//                   leading: Image.asset(wimgmeat[index], fit: BoxFit.cover, width: 60),
//                   title: Text(wname[index]),
//                   subtitle: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(desc),
//                       Text(price, style: TextStyle(color: Colors.green)),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
