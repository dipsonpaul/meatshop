import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Res extends StatefulWidget {
  const Res({super.key});

  @override
  State<Res> createState() => _ResState();
}

class _ResState extends State<Res> {
  String status = '';
  String message = '';
  final TextEditingController username = TextEditingController();
  String apiKey =
      "koFCpCMzm8hhn9ULj0BnUzZkpqM3rg9Mqdii3FwPRjBwZFQWriIJYgB5jjOhNIyasSl4RrmCFLW3tHDRtI39viQbYEP7nEkYvba2wstThYWjvkndZq0zaXJaWjuqeZo8vR3MMHa6OhBDKsFPmWOlIM4H1TgB1fudQndGKzUPg8YhAoaAoCxZ562zjbQdPO73ZkwyPV7iOIkyH11ZLAN42a5dgLH22Rs1VasEWBKdfkqMLPfDbLQpF9Ofqah4fqwc";

  Future makePost() async {
    final dio = Dio();
    final url =
        "https://meatshop.b4production.com/index.php?route=api/completeapi&api_token=";
    final formData =
        FormData.fromMap({'user_id': username.text, 'key': apiKey});
    try {
      final response = await dio.post(url, data: formData);
      if (response.statusCode == 200) {
        final responseData = response.data;

        if (responseData['success'] == 'success') {
          setState(() {
            status = 'success';
            message = 'Request successful!';
          });
        } else {
          setState(() {
            message = 'Request failed with response: ${responseData}';
          });
        }
      } else {
        setState(() {
          message = 'Error: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        message = '$e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "User ID"),
              controller: username,
            ),
            ElevatedButton(onPressed: makePost, child: Text("Submit")),
            Text(message)
          ],
        ),
      )),
    );
  }
}
