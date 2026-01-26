import 'package:dio/dio.dart';

class Httphelper {

  final String _baseurl = 'https://www.googleapis.com/books/v1/volumes';

  Future<Response> get(String endpoint,) async {
    final uri = Uri.parse('$_baseurl$endpoint');
    var response = await Dio().getUri(uri);
    return response;
  }

}