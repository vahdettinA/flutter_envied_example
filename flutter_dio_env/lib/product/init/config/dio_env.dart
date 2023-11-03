import 'package:envied/envied.dart';
import 'package:flutter_dio_env/product/init/config/app_config.dart';

part 'dio_env.g.dart';

@Envied(obfuscate: true, path: "assets/env/dio.env")
final class DioEnv implements AppConfigurations {
  @EnviedField(varName: 'Base_Url')
  static final String _baseUrl = _DioEnv._baseUrl;
  @EnviedField(varName: 'Gizli')
  static final String _gizli = _DioEnv._gizli;
  @override
  String get baseUrl => _baseUrl;

  @override
  String get gizli => _gizli;
}
