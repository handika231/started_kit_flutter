import 'package:dio/dio.dart';

class UserServices {
  static Future getUserId() async {
    final Response response = await Dio().get('https://reqres.in/api/users/2');
    return response.data;
  }

  static Future getListUser() async {
    final Response response = await Dio().get('https://reqres.in/api/users');
    return response.data;
  }
}
