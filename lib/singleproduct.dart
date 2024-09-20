import 'package:fish__app/mycart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class singeproduct extends StatefulWidget {
  const singeproduct({super.key});

  @override
  State<singeproduct> createState() => _singeproductState();
}

class _singeproductState extends State<singeproduct> {
  var cl = "Select";
  var cut = ["Plan Cut", "Curry Cut"];
  int killo = 0;
  int gram = 100;
  int gramin = 5;
  final List<Map<String, String>> products = [
    {
      'name': 'Catla',
      'price': '₹199.00/500g',
      'imageUrl': 'asset/image/catla.jpeg',
      'sprice': '₹209'
    },
    {
      'name': 'Indian Mackerel',
      'price': '₹299.00/500g',
      'imageUrl': 'asset/image/marckerel.jpeg',
      'sprice': '₹309'
    },
    {
      'name': 'Pink Perch',
      'price': '₹199.00/500g',
      'imageUrl': 'asset/image/pink.jpeg',
      'sprice': '₹229'
    },
    {
      'name': 'Tilapia',
      'price': '₹179.00/500g',
      'imageUrl': 'asset/image/tilapia.jpeg',
      'sprice': '₹209'
    },
    {
      'name': 'Pink Perch',
      'price': '₹199.00/500g',
      'imageUrl': 'asset/image/pink.jpeg',
      'sprice': '₹229'
    },
    {
      'name': 'Tilapia',
      'price': '₹179.00/500g',
      'imageUrl': 'asset/image/tilapia.jpeg',
      'sprice': '₹209'
    },
  ];
  void increment() {
    setState(() {
      killo++;
    });
  }

  void increment2() {
    setState(() {
      gram += 100;
    });
  }

  void decrement() {
    setState(() {
      killo--;
    });
  }

  void decrement2() {
    setState(() {
      gram -= 100;
    });
  }

  void gramin2() {
    setState(() {
      gram = gram + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Seer fish"),
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => cart()));
                },
                icon: const Icon(Icons.shopping_cart))
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 15,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Image.asset(
                          "asset/image/fishcatecory2.jpeg",
                          fit: BoxFit.none,
                        ),
                      ),
                      Container(
                          height: 50,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              (BoxShadow(
                                color: Colors.grey,
                                blurRadius: 7,
                              ))
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Text(
                                "Seer Fish/King Fish/Surmal/Neymeen/Vanjaram/ Anjal (Large) (1.5kg to 6.6 kg)"),
                          )),
                      const SizedBox(
                        height: 10,
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
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Choose your cut"),
                                DropdownButton(
                                  items: cut.map((e) {
                                    return DropdownMenuItem(
                                      child: Text(e),
                                      value: e,
                                    );
                                  }).toList(),
                                  onChanged: (val) {
                                    setState(() {
                                      cl = val!;
                                    });
                                  },
                                )
                              ],
                            ),
                          )),
                      const SizedBox(
                        height: 10,
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
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Request Your Quantity"),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Whole 180/500 grams",
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  Text("₹ 360",
                                      style: TextStyle(color: Colors.blue)),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "Kilogram",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            IconButton(
                                                onPressed: decrement,
                                                icon: Icon(Icons.remove),
                                                style: ButtonStyle(
                                                    side:
                                                        MaterialStatePropertyAll(
                                                            BorderSide(
                                                                width: 0.2)))),
                                            Padding(
                                              padding: const EdgeInsets.all(20),
                                              child: Text('$killo',
                                                  style:
                                                      TextStyle(fontSize: 20)),
                                            ),
                                            IconButton(
                                              onPressed: increment,
                                              icon: Icon(Icons.add),
                                              style: ButtonStyle(
                                                  side:
                                                      MaterialStatePropertyAll(
                                                          BorderSide(
                                                              width: 0.2))),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          "Grams",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 19),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            IconButton(
                                                onPressed: decrement2,
                                                icon: Icon(Icons.remove),
                                                style: ButtonStyle(
                                                    side:
                                                        MaterialStatePropertyAll(
                                                            BorderSide(
                                                                width: 0.1)))),
                                            Padding(
                                              padding: const EdgeInsets.all(20),
                                              child: Text('$gram',
                                                  style:
                                                      TextStyle(fontSize: 19)),
                                            ),
                                            IconButton(
                                              onPressed: increment2,
                                              icon: Icon(Icons.add),
                                              style: ButtonStyle(
                                                  side: WidgetStatePropertyAll(
                                                      BorderSide(width: 0.2))),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Center(
                                  child:
                                      Text("Gross wt. aprox :$killo.$gram kg"))
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
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
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Price Summary",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Whole Product Price"),
                                    Text("580/kg")
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Whole Product Requied"),
                                    Text("0.769/kg")
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [Text("Wastage"), Text(".27kg")],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Final Weight"),
                                    Text(".50kg"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Delivery charge"),
                                    Text(
                                      "FREE",
                                      style: TextStyle(color: Colors.green),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Final Price",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text("0.769 x 580 = 446",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
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
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Description"),
                              Text(
                                  "Seer fish refers to a subfamily of the Scombridae or Mackerel family. They are pelagic fishes, fast swimmers and predatory in nature, that fight vigorously when caught. Seerfishes are mainly caught using hooks and lines. They are a delicacy in several regions of South India and Sri Lanka. In northern Tamil Nadu and Andhra Pradesh, this fish is called Vanjaram and is usually the costliest variety available. In Kerala, it is called \"Neymeen\"")
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: const Text("Similar Product"),
                      ),
                      Container(
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
                                      builder: (context) => singeproduct()));
                            },
                          ))),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                child: Center(
              child: Container(
                height: 50,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            ),
                            Text("save")
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          decoration:
                              BoxDecoration(color: Colors.grey.shade900),
                          child: Center(
                            child: Text(
                              "Add to Cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          decoration:
                              BoxDecoration(color: Colors.orange.shade900),
                          child: Center(
                            child: Text("Buy Now",
                                style: TextStyle(color: Colors.white)),
                          )),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
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
                        fontSize: 12,
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
