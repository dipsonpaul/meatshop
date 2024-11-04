import 'dart:async';
import 'dart:core';

import 'package:dio/dio.dart';
import 'package:fish__app/models/dashbordresponse.dart';
import 'package:fish__app/models/loginresponse.dart';
import 'package:fish__app/models/registerresponse.dart';
import 'package:fish__app/models/rescipee2.dart';
import 'package:fish__app/models/rescipeeresponsee.dart';

import 'apilinks.dart';

class Api {
  Api._internal();
  static Api instance = Api._internal();
  factory() {
    return instance;
  }

  final dio = Dio();
  final url = URL();

  Api() {
    dio.options =
        BaseOptions(baseUrl: url.baseUrl, responseType: ResponseType.json);
  }

  Future<reg?> registerUserApi(FormData formData) async {
    try {
      final result = await dio.post(url.regiEnd, data: formData);
      print(result);
      return reg.fromJson((result.data));
    } on DioException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  Future<log?> loginUserApi(FormData formData) async {
    try {
      final result = await dio.post(url.loginEnd, data: formData);
      print("resultttt--->$result");
      return log.fromJson(result.data);
    } on DioException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }

  Future<dash?> homeUserApi(FormData formData) async {
    try {
      final result = await dio.post(url.homeEnd, data: formData);
      print("resuit");
      return dash.fromJson(result.data);
    } on DioException catch (e) {
      print(e);
    }
  }

  Future<recmodal?> recipesUserApi(FormData formdata) async {
    try {
      final result = await dio.post(url.recipEnd, data: formdata);
      print("recipee->>>>$result");
      return recmodal.fromJson(result.data);
    } on DioException catch (e) {
      print(e);
    }
  }

    Future<rec2modal?> singlereciUserApi(FormData formdata) async {
    try {
      final result = await dio.post(url.singlerecipEnd, data: formdata);
      return rec2modal.fromJson(result.data);
    } on DioException catch (e) {
      print(e);
    }
  }


// Future <singleproduct {?> productUserApi (FormData formData) async{
//   try{
//     final result = await dio.post(url.productEnd,data: formData);
//     return singleproduct.fromJson(result.data);
//   }
//   on DioException catch(e){
//     print(e);
//   }

// }

// Future <Singleproductmodal?> singleproductUserApi (FormData formdata) async{
//   try{
//     final result = await dio.post(url.singleproEnd,data: formdata);
//     return Singleproductmodal.fromJson(result.data);
//   }
//   on DioException catch(e){
//     print(e);
//   }
// }


// Future <Editpromdal?> EditproUserApi (FormData formdata) async{
//   try{
//    final result =await dio.post(url.editproEnd,data: formdata);
//    return Editpromdal.fromJson(result.data);
//   }
//   on DioException catch(e){
//     print(e);
//   }
// }
}
