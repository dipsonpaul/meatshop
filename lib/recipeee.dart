import 'package:dio/dio.dart';
import 'package:fish__app/apis/apiclass.dart';
import 'package:fish__app/apis/apilinks.dart';
import 'package:fish__app/recipee2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Recipeee extends StatefulWidget {
  Recipeee({super.key});

  @override
  State<Recipeee> createState() => _RecipeeeState();
}

class _RecipeeeState extends State<Recipeee> {
  var uid = "";

  Future<void> recdata() async {
    final formData = FormData.fromMap({'user_id': 5038, 'key': URL().Key});
    final result = await Api().recipesUserApi(formData);
    setState(() {
      res.addAll(result!.data!);
      print(res);
    });
  }

  List res = [];
  var imageurl = [
    'asset/image/sal1.jpeg',
    'asset/image/FIsh in crazy.jpeg',
    'asset/image/Thai STyle.jpeg',
    'asset/image/barbecued.jpeg',
    'asset/image/Fish ghee rice.jpeg',
    'asset/image/Duff GOldman.jpeg',
    'asset/image/FIsh in crazy.jpeg',
    'asset/image/Thai STyle.jpeg',
    'asset/image/barbecued.jpeg',
    'asset/image/Fish ghee rice.jpeg',
    'asset/image/Duff GOldman.jpeg',
    'asset/image/FIsh in crazy.jpeg',
    'asset/image/Thai STyle.jpeg',
    'asset/image/barbecued.jpeg',
    'asset/image/Fish ghee rice.jpeg',
    'asset/image/Duff GOldman.jpeg'
  ];

  var diff = [
    'Medium',
    'Easy',
    'Medium',
    'Easy',
    'Medium',
    'Easy',
    'Medium',
    'Easy',
    'Medium',
    'Medium',
    'Easy',
    'Medium',
    'Easy',
    'Medium'
  ];

  @override
  void initState() {
    recdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Recipes",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.grey.shade200,
              child: GridView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.all(15),
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                ),
                itemCount: res.length,
                itemBuilder: (context, index) {
                  return recipecard(
                    name: res[index].name,
                    diffculty: diff[index],
                    imageurl1: imageurl[index],
                    cok: res[index].time,
                    id: res[index].id,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void getval() async {
    SharedPreferences share = await SharedPreferences.getInstance();
    uid = share.getString("usd")!;
  }
}

class recipecard extends StatelessWidget {
  final String name;
  final String diffculty;
  final String cok;
  final String imageurl1;
  final String id;

  recipecard({
    required this.name,
    required this.diffculty,
    required this.imageurl1,
    required this.cok,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: 200,
                  child: Image.asset(
                    imageurl1,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(name),
              Text(
                "Diffculity : $diffculty ",
                style: TextStyle(color: Colors.grey, fontSize: 11),
              ),
              Text("Cooking : $cok ",
                  style: TextStyle(color: Colors.grey, fontSize: 11))
            ],
          ),
        ),
        onTap: () {
          print("iddddd>>>>>$id");
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RecipeScreen(
                        resid2: id,
                        resid: null,
                      )));
        });
  }
}
