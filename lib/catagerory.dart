import 'dart:async';
import 'package:fish__app/singlepro2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class cat extends StatefulWidget {
  cat({super.key});

  @override
  State<cat> createState() => _catState();
}

class _catState extends State<cat> {
  @override
  var gval = "Low";
  var _sliderValue = 50.0;
  final StreamController<String> sortOptionController =
      StreamController<String>();
  final List<Map<String, String>> products = [
    {
      'name': 'Catla',
      'price': '₹199.00/500g',
      'imageUrl': 'asset/image/catla.jpeg',
      'sprice': '₹209.00'
    },
    {
      'name': 'Indian Mackerel',
      'price': '₹299.00/500g',
      'imageUrl': 'asset/image/marckerel.jpeg',
      'sprice': '₹309.00'
    },
    {
      'name': 'Pink Perch',
      'price': '₹199.00/500g',
      'imageUrl': 'asset/image/pink.jpeg',
      'sprice': '₹229.00'
    },
    {
      'name': 'Tilapia',
      'price': '₹179.00/500g',
      'imageUrl': 'asset/image/tilapia.jpeg',
      'sprice': '₹209.00'
    },
    {
      'name': 'Pink Perch',
      'price': '₹199.00/500g',
      'imageUrl': 'asset/image/pink.jpeg',
      'sprice': '₹229.00'
    },
    {
      'name': 'Tilapia',
      'price': '₹179.00/500g',
      'imageUrl': 'asset/image/tilapia.jpeg',
      'sprice': '₹209.00'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 15,
            child: Container(
              color: Colors.grey.shade200,
              child: SingleChildScrollView(
                child: InkWell(
                  child: GridView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.all(15),
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                    ),
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ProductCard(
                        name: products[index]['name']!,
                        price: products[index]['price']!,
                        imageUrl: products[index]['imageUrl']!,
                        sprice: products[index]['sprice']!,
                      );
                    },
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SingleProduct()));
                  },
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.sort),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 200,
                                width: double.infinity,
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sort By",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Price -- Low to High"),
                                        Radio(
                                          value: "lowToHigh",
                                          groupValue: gval,
                                          onChanged: (val) {
                                            setState(() {
                                              gval = val!;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Price -- High to Low"),
                                        Radio(
                                          value: "highToLow",
                                          groupValue: gval,
                                          onChanged: (val) {
                                            setState(() {
                                              gval = val!;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                      Text("SORT"),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              double localSliderValue = _sliderValue;

                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    StateSetter setModalState) {
                                  return Container(
                                    height: 200,
                                    padding: const EdgeInsets.all(16.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Filter"),
                                            TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  _sliderValue =
                                                      localSliderValue;
                                                });
                                                Navigator.pop(context);
                                              },
                                              child: Text("Done"),
                                            ),
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        SfSlider(
                                          min: 0,
                                          max: 100,
                                          value: localSliderValue,
                                          interval: 20,
                                          showTicks: true,
                                          showLabels: true,
                                          enableTooltip: true,
                                          minorTicksPerInterval: 1,
                                          stepSize: 5,
                                          onChanged: (dynamic newValue) {
                                            setModalState(() {
                                              localSliderValue = newValue;
                                            });
                                          },
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
                      Text("FILTER"),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final String sprice;
  final String imageUrl;

  ProductCard({
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.sprice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(imageUrl, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(price),
                    Text(
                      sprice,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class back extends StatelessWidget {
  const back({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("coming soon"),
    ));
  }
}
