import 'package:block_arch/utils/app_constant.dart';
import 'package:dio/dio.dart';

class ApiClient {
  final dio = createDio();

  static Dio createDio() {
    return Dio(BaseOptions(
        baseUrl: AppConstant.baseURL,
        receiveTimeout: const Duration(milliseconds: 15000),
        connectTimeout: const Duration(milliseconds: 15000),
        sendTimeout: const Duration(milliseconds: 15000)));
  }
}
