import 'package:dio/dio.dart';
import 'package:fish__app/apis/apilinks.dart';
import 'package:fish__app/models/dashbordresponse.dart';
import 'package:fish__app/singlepro2.dart';
import 'package:fish__app/tabpagesss.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'apis/apiclass.dart';

class FPage extends StatefulWidget {
  FPage({super.key});

  @override
  State<FPage> createState() => _FPageState();
}

class _FPageState extends State<FPage> {
  Future<void> getdata() async {
    final formData = FormData.fromMap({'user_id': 5038, 'key': URL().Key});
    final result = await Api().homeUserApi(formData);
    setState(() {
      cat.addAll(result!.data!.categories!);
    });
  }

  Future<void> getdata2() async {
    final formData = FormData.fromMap({'user_id': 5038, 'key': URL().Key});
    final result = await Api().homeUserApi(formData);
    print(NewArraivals);
    setState(() {
      araivals.addAll(result!.data!.newArraivals!);
      print(araivals);
    });
  }

  int _currentIndex = 0;
  List cat = [];
  List araivals = [];
  final List<String> categoryText = [
    'Fresh Fish',
    'Seer Fish',
    'Crab',
    'Pomfret'
  ];

  final List<String> categoryImg = [
    'asset/image/fishcatecory.jpeg',
    'asset/image/fishcatecory2.jpeg',
    'asset/image/fishcatecory3.jpeg',
    'asset/image/fishcatecory4.jpeg',
  ];

  final arravialimg = [
    'asset/image/catla.jpeg',
    'asset/image/marckerel.jpeg',
    'asset/image/pink.jpeg',
    'asset/image/tilapia.jpeg',
    'asset/image/catla.jpeg',
    'asset/image/marckerel.jpeg',
    'asset/image/pink.jpeg',
    'asset/image/tilapia.jpeg',
    'asset/image/catla.jpeg',
    'asset/image/marckerel.jpeg',
    'asset/image/pink.jpeg',
  ];

  final sprice2 = [
    '₹209.00',
    '₹309.00',
    '229.00',
    '₹209.00',
    '₹209.00',
    '₹309.00',
    '229.00',
    '₹209.00',
    '₹209.00',
    '₹309.00',
    '229.00'
  ];

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
      'sprice': '229.00'
    },
    {
      'name': 'Tilapia',
      'price': '₹179.00/500g',
      'imageUrl': 'asset/image/tilapia.jpeg',
      'sprice': '₹209.00'
    },
  ];
  final List<String> image = [
    "asset/image/carosul1.png",
    "asset/image/caraosl2.jpeg",
    "asset/image/caraosl3.jpeg"
  ];
  @override
  void initState() {
    getdata();
    getdata2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.blue,
              floating: true,
              pinned: false,
              snap: true,
              expandedHeight: 80,
              flexibleSpace: FlexibleSpaceBar(
                background: Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      left: 5,
                      right: 5,
                    ),
                    child: Container(
                      color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: TextField(
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 15.0)),
                        ),
                      ),
                    )),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  CarouselSlider(
                    items: image.map((item) => Image.asset(item)).toList(),
                    options: CarouselOptions(
                      height: 200,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 6 / 9,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      viewportFraction: 0.8,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: image.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => setState(() {
                          _currentIndex = entry.key;
                        }),
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color:
                                (Theme.of(context).brightness == Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _currentIndex == entry.key ? 0.9 : 0.4),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Categories",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => tabcat()));
                        },
                        child: Text("View All"),
                      ),
                    ],
                  ),
                  GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 8.0),
                    itemCount: 4,
                    shrinkWrap: true,
                    padding: EdgeInsets.all(15),
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return CategoryCard(
                        imageUrl: categoryImg[index],
                        label: cat[index].name,
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Fresh Arrivals",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => tabcat()));
                          },
                          child: Text("View All")),
                    ],
                  ),
                  InkWell(
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
                      itemCount: 11,
                      itemBuilder: (context, index) {
                        return ProductCard(
                          name: araivals[index].name,
                          price: araivals[index].price,
                          imageUrl: arravialimg[index],
                          sprice: sprice2[index],
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String label;

  CategoryCard({required this.label, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Expanded(child: Image.asset(imageUrl, fit: BoxFit.cover)),
            SizedBox(height: 8.0),
            Text(label, textAlign: TextAlign.center),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => tabcat()));
      },
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
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(child: Image.asset(imageUrl, fit: BoxFit.fill)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      maxLines: 1,
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(price, style: TextStyle(fontSize: 13)),
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
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SingleProduct()));
      },
    );
  }
}
