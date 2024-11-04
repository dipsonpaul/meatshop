import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fish__app/forgot.dart';
import 'package:fish__app/makingpage.dart';
import 'package:fish__app/regsteration.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';

import 'apis/apiclass.dart';

class sociallogin extends StatefulWidget {
  const sociallogin({super.key});

  @override
  State<sociallogin> createState() => _socialloginState();
}

class _socialloginState extends State<sociallogin> {
  bool value11 = false;
  String staus = "";
  String message1 = '';
  String username = "";
  String useridd = "";
  String lastname = "";
  final TextEditingController usernamecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

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
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility),
                                onPressed: () {
                                  setState(() {
                                    _isObsured = !_isObsured;
                                  });
                                },
                              )),
                          controller: passwordcontroller,
                        ),
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
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            children: [
                              Checkbox(
                                  value: value11,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      value11 = value!;
                                    });
                                  }),
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
                                      onPressed: log,
                                      style: const ButtonStyle(
                                          backgroundColor:
                                              WidgetStatePropertyAll(
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

  void log() async {
    String Key =
        "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";
    final mail = usernamecontroller.text;
    final psd = passwordcontroller.text;
    if (mail.isEmpty) {
      showErrormessage("Enter Username");
    } else if (psd.isEmpty) {
      showErrormessage("Enter Password");
    } else {
      final formData =
          FormData.fromMap({'email': mail, 'password': psd, 'key': Key});
      final result = await Api().loginUserApi(formData);
      if (result != null) {
        if (result.status == "success") {
          showsuccesmessage(result.message);
          useridd = result.userId!;
          message1 = result.message!;
          username = result.firstname!;
          lastname = result.lastname!;
          saveval(result.userId!);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => make(
                        initialIndex: 0,
                      )));
          showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                      title: Text("WELCOME "),
                      content: Container(
                        height: 40,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text("USER ID : "),
                                Text("$useridd"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("NAME : "),
                                Text("$username"),
                                Text("$lastname")
                              ],
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => make(
                                            initialIndex: 0,
                                          )));
                            },
                            child: Container(
                              child: Text("OK"),
                            )),
                      ]));
        } else {
          showErrormessage(result.message);
        }
      }
    }
  }

  void showErrormessage(msg) {
    print("Errorrrr");
    MotionToast.error(
            title: Text("ERROR"),
            position: MotionToastPosition.top,
            description: Text(msg))
        .show(context);
  }

  void showsuccesmessage(msg) {
    MotionToast.success(
            description: Text(msg), position: MotionToastPosition.top)
        .show(context);
  }

  void saveval(String useridd) async {
    SharedPreferences share = await SharedPreferences.getInstance();
    share.setString("usd", useridd);
    print("ussserrrr$useridd");
  }
}
