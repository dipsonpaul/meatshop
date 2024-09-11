import 'package:flutter/material.dart';

class cat2 extends StatelessWidget {
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

  cat2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Categories",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0),
                itemCount: categoryImg.length,
                shrinkWrap: true,
                padding: EdgeInsets.all(15),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CategoryCard(
                    imageUrl: categoryImg[index],
                    label: categoryText[index],
                  );
                },
              )
            ],
          ),
        ));
  }
}

class CategoryCard extends StatelessWidget {
  final String imageUrl;
  final String label;

  CategoryCard({required this.imageUrl, required this.label});

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
          Expanded(child: Image.asset(imageUrl, fit: BoxFit.cover)),
          SizedBox(height: 8.0),
          Text(label, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
