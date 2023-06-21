import 'package:belajar_networking/model/user_list_model/user_list_model.dart';
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

  Future<UserListModel> fetchList() async {
    final Response response = await _dio.get('https://reqres.in/api/users');
    return UserListModel.fromJson(response.data);
  }
}
