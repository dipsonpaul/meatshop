import 'package:fish__app/settings.dart';
import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "My Profile",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  (BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  )),
                ],
              ),
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      OutlinedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => editprofile()));
                          },
                          child: Text("Edit")),
                    ],
                  ),
                  TextField(decoration: InputDecoration(label: Text("Name"))),
                  TextField(decoration: InputDecoration(label: Text("Email"))),
                  TextField(decoration: InputDecoration(label: Text("Moblie")))
                ],
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => settinggggg()));
                    },
                    child: Text(
                      "update",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class editprofile extends StatefulWidget {
  const editprofile({super.key});

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
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
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          label: Text(
                        "Name",
                      )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Text(
                        "Moblie Number",
                      )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Text(
                        "Email",
                      )),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  (BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                  )),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          label: Text(
                        "City",
                      )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Text(
                        "Locality,area or street",
                      )),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Text(
                        "Flat no,Building name",
                      )),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: TextField(
                              decoration: InputDecoration(
                                  label: Text(
                                "Pincode",
                              )),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  label: Text(
                                "State",
                              )),
                            ),
                          ),
                        )
                      ],
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Text(
                        "Landmark(optional)",
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: (context) => profile()));
                    },
                    child: Text(
                      "UPDATE",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        side: BorderSide.none,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
