import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dio_env/future/model/User_Model.dart';
import 'package:flutter_dio_env/product/init/config/app_env.dart';

abstract class IUserService {
  late Dio dio;
  IUserService(this.dio);
  Future<List<Data>?> fecthUser();
}

class UserService extends IUserService {
  UserService(super.dio);
  @override
  Future<List<Data>?> fecthUser() async {
    var response = await dio.get("${AppEnvEnum.baseUrl.value}");
    if (response.statusCode == HttpStatus.ok) {
      var body = response.data;
      if (body is Map<String, dynamic>) {
        return UserModel.fromJson(body).data ?? [];
      }
    }
    return null;
  }
}
