import 'package:flutter_dio_env/product/init/config/app_config.dart';

final class AppEnv {
  AppEnv.setup({required AppConfigurations config}) {
    _config = config;
  }
  static late final AppConfigurations _config;
}

enum AppEnvEnum {
  baseUrl(),
  gizli();

  String get value {
    try {
      switch (this) {
        case AppEnvEnum.baseUrl:
          return AppEnv._config.baseUrl;
        
        case AppEnvEnum.gizli:
          return AppEnv._config.gizli;
      }
    } catch (e) {
      throw Exception("Hata");
    }
  }
}
