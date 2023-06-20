import 'package:dio/dio.dart';

class UserServices {
  final Dio _dio = Dio();
  Future getUserId() async {
    final Response response = await _dio.get('https://reqres.in/api/users/2');
    return response.data;
  }

  Future getListUser() async {
    final Response response = await _dio.get('https://reqres.in/api/users');
    return response.data;
  }
}
