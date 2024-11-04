import 'package:dio/dio.dart';
import 'package:fish__app/apis/apiclass.dart';
import 'package:fish__app/apis/apilinks.dart';
import 'package:flutter/material.dart';

class RecipeScreen extends StatefulWidget {
   final String resid2;
  RecipeScreen({super.key, required resid, required this.resid2,});
  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  var name = "";
  var description = "";
  var ingredients = "";
  Future<void> res() async {
    final formData =
        FormData.fromMap({'user_id': 5038, 'key': URL().Key, 'recipe_id': widget.resid2});
    final result = await Api().singlereciUserApi(formData);
    setState(() {
      name = result!.data!.recipie!.name!;
      description = result.data!.recipie!.description!;
      ingredients = result.data!.recipie!.ingredients!;
    });
  }

  @override
  void initState() {
    res();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
       
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("asset/image/sal1.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black12,
                            Colors.black,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          stops: [0.3, 3.0],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 8.0),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time_rounded,
                                color: Colors.white,
                              ),
                              Text(
                                '  3 hr 45 min',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Icon(
                                Icons.local_fire_department,
                                color: Colors.white,
                              ),
                              Text(
                                "  480 cals",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
             
              SizedBox(height: 16.0),
              Text(
                'Ingredients',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0), Text(ingredients),
              // Padding(
              //   padding: const EdgeInsets.all(3),
              //   child: Row(
              //     children: [
              //       Icon(
              //         Icons.add_circle_outlined,
              //         color: Colors.grey,
              //         size: 20,
              //       ),
              //       SizedBox(width: 10),
              //       Text('1 clove garlic, minced'),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(3),
              //   child: Row(
              //     children: [
              //       Icon(
              //         Icons.add_circle_outlined,
              //         color: Colors.grey,
              //         size: 20,
              //       ),
              //       SizedBox(width: 10),
              //       Text('1/2 of a small onion, finely chopped'),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(3),
              //   child: Row(
              //     children: [
              //       Icon(
              //         Icons.add_circle_outlined,
              //         color: Colors.grey,
              //         size: 20,
              //       ),
              //       SizedBox(width: 10),
              //       Text('1/2 cups low sodium'),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(3),
              //   child: Row(
              //     children: [
              //       Icon(
              //         Icons.add_circle_outlined,
              //         color: Colors.grey,
              //         size: 20,
              //       ),
              //       SizedBox(width: 10),
              //       Text('1/2 cup millet'),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(3),
              //   child: Row(
              //     children: [
              //       Icon(
              //         Icons.add_circle_outlined,
              //         color: Colors.grey,
              //         size: 20,
              //       ),
              //       SizedBox(width: 10),
              //       Text('Juice + zest of 1 lemon'),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.all(3),
              //   child: Row(
              //     children: [
              //       Icon(
              //         Icons.add_circle_outlined,
              //         color: Colors.grey,
              //         size: 20,
              //       ),
              //       SizedBox(width: 10),
              //       Text('1/2 cup kalamata leaves, chopped'),
              //     ],
              //   ),
              // ),
              SizedBox(height: 16.0),
              Text(
                'How to cook',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(description)
              // Text(
              //     '1.  Heat olive oil in a large saucepan over medium heat. Add onions and sauté until translucent (about 5 minutes), seasoning with cumin, salt, and pepper. Remove onions from pan and set aside.'),
              // SizedBox(
              //   height: 20,
              // ),
              // Text(
              //     '2.  In the same pan over medium heat, lay tortilla flat. Sprinkle cheese evenly on top. Top half the cheese with cooked onions, tomato, and herbs. When cheese begins to melt, fold cheese-only side of tortilla over. Cook for another minute.'),
            ],
          ),
        ),
      ),
    );
  }
}
