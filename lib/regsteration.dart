import 'package:fish__app/apis/son2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dio/dio.dart';
import 'package:motion_toast/motion_toast.dart';

import 'apis/apiclass.dart';

class regpage extends StatefulWidget {
  regpage({super.key});

  @override
  State<regpage> createState() => _regpageState();
}

class _regpageState extends State<regpage> {
  String staus = "";
  String message = '';
  final TextEditingController firstnamecontroller = TextEditingController();
  final TextEditingController lastnamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController telephonecontroller = TextEditingController();
  final TextEditingController passwordcontroller1 = TextEditingController();
  final TextEditingController passwordcontroller2 = TextEditingController();
  String type = "asd";
  String referal_code = "7Ntqy5049";
  String Key =
      "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";

  /*Future makepost() async {
    final dio = Dio();
    final url =
        "https://meatshop.b4production.com/index.php?route=api/register&api_token=";
    final formData = FormData.fromMap({
      'firstname': firstnamecontroller.text,
      'lastname': lastnamecontroller.text,
      'email': emailcontroller.text,
      'telephone': telephonecontroller.text,
      'password': passwordcontroller1.text,
      'type': type,
      'referal_code': referal_code,
      'key': Key
    });
    print(formData);
    try {
      print("helloooo");
      final response = await dio.post(url, data: formData);
      print(response.data);
      if (response.statusCode == 200) {
        print(response);
        final responseData = response.data;
        final apiResponse = reg.fromJson(responseData);

        if (apiResponse.status == 'success') {
          setState(() {
            message = 'Resgister successful!';
          });
        } else {
          setState(() {
            message = 'Request failed with response: ${responseData}';
          });
        }
      }
    } catch (e) {
      print(e);
      setState(() {
        message = "an error occrred $e";
      });
    }
  }*/

  void initState() {
    super.initState();
    _isObsured = true;
  }

  var _isObsured;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Sign Up"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.all(25),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          label: Row(
                        children: [
                          Text("First Name"),
                          Text(
                            " *",
                            style: TextStyle(color: Colors.orange),
                          ),
                        ],
                      )),
                      controller: firstnamecontroller,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Row(
                        children: [
                          Text("Last Name"),
                          Text(
                            " *",
                            style: TextStyle(color: Colors.orange),
                          )
                        ],
                      )),
                      controller: lastnamecontroller,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Row(
                        children: [
                          Text("E-mail"),
                          Text(
                            " *",
                            style: TextStyle(color: Colors.orange),
                          )
                        ],
                      )),
                      controller: emailcontroller,
                    ),
                    TextField(
                      decoration: InputDecoration(
                          label: Row(
                        children: [
                          Text("Mobile Number"),
                          Text(
                            " *",
                            style: TextStyle(color: Colors.orange),
                          )
                        ],
                      )),
                      controller: telephonecontroller,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: _isObsured,
                      decoration: InputDecoration(
                          labelText: "Password",
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
                      controller: passwordcontroller1,
                    ),
                    TextField(
                      obscureText: _isObsured,
                      decoration: InputDecoration(
                          label: Text("Confirm Pasword"),
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
                      controller: passwordcontroller2,
                    ),
                    Text(message),
                    SizedBox(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: registerUser,
                          child: Text(
                            "Register",
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
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  void registerUser() async {
    final fname = firstnamecontroller.text;
    final lname = lastnamecontroller.text;
    final mail = emailcontroller.text;
    final mob = telephonecontroller.text;
    final pswd = passwordcontroller1.text;
    const type = 0;
    const ref = 0;
    const key =
        "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";

    if (fname.isEmpty) {
      showErrormessage("Enter first name");
    } else if (lname.isEmpty) {
      showErrormessage("Enter last name");
    } else if (mail.isEmpty) {
      showErrormessage("Enter mail-id");
    } else if (mob.isEmpty) {
      showErrormessage("Enter Mobile");
    } else if (pswd.isEmpty) {
      showErrormessage("Enter password");
    } else {
      final formData = FormData.fromMap({
        'firstname': fname,
        'lastname': lname,
        'email': mail,
        'telephone': mob,
        'password': pswd,
        'type': type,
        'referal_code': ref,
        'key': key
      });
      final result = await Api().registerUserApi(formData);
      if (result != null) {
        if (result.status == "success") {
          showSuccessmessage(result.message);
        } else {
          showErrormessage(result.message);
        }
      }
    }
  }

  void showErrormessage(msg) {
    MotionToast.error(
      title: const Text(
        'Error',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(msg),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
    ).show(context);
  }

  void showSuccessmessage(msg) {
    MotionToast.success(
      title: const Text(
        'Sucess',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      description: Text(msg),
      position: MotionToastPosition.top,
      barrierColor: Colors.black.withOpacity(0.3),
      width: 300,
      height: 80,
      dismissable: true,
    ).show(context);
  }
}
