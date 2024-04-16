import 'package:dio/dio.dart';

// api service
class ApiService {
  static const String baseUrl = "https://api.stripe.com/v1/payment_intents";
  final Dio dio = Dio();

  // http request [ post - get - put - delete ]
  Future<Response> post({
    required dynamic token,
    required String url,
    required dynamic data,
    String? contentType,
  }) async {
    Response<dynamic> response = await dio.post(
      url,
      data: data,
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {"Authorization": "Bearer $token"},
      ),
    );
    return response;
  }
}
