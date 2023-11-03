import 'package:flutter/material.dart';
import 'package:flutter_dio_env/product/init/config/app_env.dart';
import 'package:flutter_dio_env/product/init/config/dio_env.dart';

@immutable
final class AppInitilaze {
  void make() {
    init();
  }

  void init() {
    AppEnv.setup(config: DioEnv());
  }
}
