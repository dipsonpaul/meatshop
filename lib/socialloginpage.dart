import 'package:dio/dio.dart';
import 'package:fish__app/forgot.dart';
import 'package:fish__app/makingpage.dart';
import 'package:fish__app/regsteration.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class sociallogin extends StatefulWidget {
  const sociallogin({super.key});

  @override
  State<sociallogin> createState() => _socialloginState();
}

class _socialloginState extends State<sociallogin> {
  String staus = "";
  String message = '';
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  String Key =
      "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";

  Future makepost() async {
    final dio = Dio();
    final url =
        "https://meatshop.b4production.com/index.php?route=api/login&api_token=";
    final formData = FormData.fromMap({
      'email': usernamecontroller.text,
      'password': passwordcontroller.text,
      'key': Key
    });
    try {
      final response = await dio.post(url, data: formData);
      if (response.statusCode == 200) {
        print(response);
        final responseData = response.data;
        final apiResponse = responseData.fromJson(responseData);

        if (apiResponse.success == 'success') {
          setState(() {
            message = 'successfuly logged';
          });
        } else {
          setState(() {
            message = 'Request failed with response: ${responseData}';
          });
        }
      }
    } catch (e) {
      print("errorrr");
    }
  }

  @override
  void initState() {
    super.initState();
    _isObsured = true;
  }

  var _isObsured;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: const Color.fromARGB(255, 28, 122, 135),
                    child: Center(
                        child: Image.asset(
                      "asset/image/1024.png",
                      height: 150,
                    )),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                  ),
                )
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 160),
                child: Container(
                  height: 500,
                  width: 300,
                  decoration: const BoxDecoration(
                      boxShadow: [
                        (BoxShadow(
                          color: Colors.grey,
                          blurRadius: 7,
                        ))
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextField(
                          controller: usernamecontroller,
                          decoration: InputDecoration(hintText: "Username"),
                        ),
                        TextField(
                          obscureText: _isObsured,
                          decoration: InputDecoration(
                              hintText: "password",
                              suffixIcon: IconButton(
                                icon: _isObsured
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isObsured = !_isObsured;
                                  });
                                },
                              )),
                          controller: passwordcontroller,
                        ),
                        Text(message),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => forgotpage()));
                                },
                                child: const Text("Forget Password ?",
                                    style: TextStyle(color: Colors.blue))),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 20),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: false, onChanged: (bool? value) {}),
                              const Text("Remember Me")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Expanded(
                                  child: ElevatedButton(
                                      onPressed: makepost,
                                      style: const ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.blue)),
                                      child: Text(
                                        "Login",
                                        style: TextStyle(color: Colors.white),
                                      )))
                            ],
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("New User ?"),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => regpage()));
                                  },
                                  child: const Text(
                                    "SIGN UP",
                                    style: TextStyle(color: Colors.blue),
                                  ))
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {},
                                child: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("asset/image/gplus@3x.png"),
                                )),
                            InkWell(
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("asset/image/facebook@3x.png"),
                              ),
                              onTap: () {},
                            ),
                          ],
                        ),
                        const Text("OR"),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => make(
                                            initialIndex: 0,
                                          )));
                            },
                            child: const Text("Guset Login"))
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
