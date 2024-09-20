import 'package:flutter/material.dart';

class Recipeee extends StatelessWidget {
  Recipeee({super.key});
  final List<Map<String, String>> itemsss = [
    {
      'name': 'Grilled Squid Salad',
      'diff': 'Easy',
      'Cook': '25 Minitues',
      'imageurl1': 'asset/image/sal1.jpeg'
    },
    {
      'name': 'Fish in Crazy Water',
      'diff': 'Easy',
      'Cook': '25 Minitues',
      'imageurl1': 'asset/image/FIsh in crazy.jpeg'
    },
    {
      'name': 'Thai-style crispy sea bass',
      'diff': 'Medium',
      'Cook': '25 Minitues',
      'imageurl1': 'asset/image/Thai STyle.jpeg'
    },
    {
      'name': 'Barbecued Trout',
      'diff': 'Easy',
      'Cook': '45 Minitues',
      'imageurl1': 'asset/image/barbecued.jpeg'
    },
    {
      'name': 'Fish Ghee Rice',
      'diff': 'Easy',
      'Cook': '25 Minitues',
      'imageurl1': 'asset/image/Fish ghee rice.jpeg'
    },
    {
      'name': 'Duff Goldman Spanish Style Grilled Fish',
      'diff': 'Easy',
      'Cook': '25 Minitues',
      'imageurl1': 'asset/image/Duff GOldman.jpeg'
    }
  ];
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
              child: InkWell(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecipeScreen()));
                  },
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
                    itemCount: itemsss.length,
                    itemBuilder: (context, index) {
                      return recipecard(
                        name: itemsss[index]['name']!,
                        diffculty: itemsss[index]['diff']!,
                        imageurl1: itemsss[index]['imageurl1']!,
                        cok: itemsss[index]['Cook']!,
                      );
                    },
                  ),
                ),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}

class recipecard extends StatelessWidget {
  final String name;
  final String diffculty;
  final String cok;
  final String imageurl1;

  recipecard({
    required this.name,
    required this.diffculty,
    required this.imageurl1,
    required this.cok,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              imageurl1,
              fit: BoxFit.cover,
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
    );
  }
}

//////////////////////////////////////////////////
///

class RecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Grilled Squid Salad',
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
                height: 300,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "asset/image/sal1.jpeg",
                        ),
                        fit: BoxFit.fill)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Grilled Squid Salad',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(Icons.access_time_rounded),
                      Text('  3 hr 45 min'),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.local_fire_department),
                      Text("  480 cals")
                    ],
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              SizedBox(height: 16.0),
              Text(
                'Ingredients',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text('1 clove garlic, minced'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text('1/2 of a small onion, finely chopped'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text('1/2 cups low sodium'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text('1/2 cup millet'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text('Juice + zest of 1 lemon'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(3),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_circle_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(width: 10),
                    Text('1/2 cup kalamata leaves, chopped'),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'How to cook',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                  '1.  Heat olive oil in a large saucepan over medium heat. Add onions and sauté until translucent (about 5 minutes), seasoning with cumin, salt, and pepper. Remove onions from pan and set aside.'),
              SizedBox(
                height: 20,
              ),
              Text(
                  '2.  In the same pan over medium heat, lay tortilla flat. Sprinkle cheese evenly on top. Top half the cheese with cooked onions, tomato, and herbs. When cheese begins to melt, fold cheese-only side of tortilla over. Cook for another minute.'),
            ],
          ),
        ),
      ),
    );
  }
}
