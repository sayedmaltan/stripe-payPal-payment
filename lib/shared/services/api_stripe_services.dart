import 'package:dio/dio.dart';

class ApiStripeServices{

  final Dio dio = Dio();

  Future<Response> post({required String url, required  body,String? contentType,required String token,Map<String,String>? headers}) async {
    var response = await dio.post(
      url,
      data: body,
      options: Options(
          contentType:contentType?? Headers.formUrlEncodedContentType,
          headers:headers?? {
            'Authorization':'Bearer $token'
          }
      ),
    );
    return response;
  }
}