import 'package:block_arch/data/services/api_client.dart';
import 'package:dio/dio.dart';

class PostProviders {
  final ApiClient _client;

  PostProviders(this._client);

  Future<List<dynamic>> fetchPosts() async {
    try {
      Response response = await _client.dio.get("/posts");
      return response.data;
    } on DioException catch (_) {
      return [];
    }
  }
}
