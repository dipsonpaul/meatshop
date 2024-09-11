import 'package:fish__app/deliveradd.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cart extends StatelessWidget {
  List cartter = [
    {
      'name': 'Indian Mackerel / Ayala / Bangda / Aiyla (large) 6+ Count/kg)',
      'price': '₹199.00',
      'imageUrl': 'asset/image/marckerel.jpeg',
      'qty': 'qty : 2.25kg'
    },
    {
      'name':
          'Pink Perch/ Kilimeen / Sankara Meen/Thread Finned Bream (Large) (180g to 310g)',
      'price': '₹399.0',
      'imageUrl': 'asset/image/pink.jpeg',
      'qty': 'qty : 1.25kg'
    }
  ];
  cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartter.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  leading: Image.asset(cartter[index]["imageUrl"]!,
                      fit: BoxFit.cover, width: 60),
                  title: Text(cartter[index]["name"]!),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(cartter[index]["price"]!),
                    ],
                  ),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.black)),
                            height: 30,
                            width: 60,
                            child: Center(
                                child: Text(
                              "Remove",
                            ))),
                        onTap: () {},
                      ),
                      Text(cartter[index]["qty"]!)
                    ],
                  ),
                );
              },
            ),
          ),
          Divider(height: 1.0),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Final Price"),
                    Text("0.769 x 580 = 446"),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Coupon discount:"),
                    Text("0"),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery charge:"),
                    Text("FREE", style: TextStyle(color: Colors.green)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub Total",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text("Rs. 468.00",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(),
                Row(
                  children: [
                    Icon(
                      Icons.sell,
                      color: Colors.grey,
                    ),
                    Text(
                      "  ADD PROMO CODE",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => deladdress()));
                  },
                  child: Text(
                    "Confirm Order",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.orange.shade600),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
