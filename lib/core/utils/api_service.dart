import 'package:dio/dio.dart';

// api service
class ApiService {
  final Dio dio = Dio();

  // http request [ post - get - put - delete ]
  Future<Response> post({
    required dynamic token,
    required String url,
    required dynamic data,
    String? contentType,
  }) async {
    Response<dynamic> response = await dio.post(url,
        data: data,
        options: Options(
            contentType: contentType,
            headers: {"Authorization": "Bearer $token"}));
    return response;
  }
}
