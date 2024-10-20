import 'package:dio/dio.dart';

class ApiStripeServices{

  final Dio dio = Dio();

  Future<Response> post({required String url, required Map body,String? contentType,required String auth}) async {
    var response = await dio.post(
      url,
      data: body,
      options: Options(
          contentType:contentType?? Headers.formUrlEncodedContentType,
          headers: {
            'Authorization':'Bearer $auth'
          }
      ),
    );
    return response;
  }
}