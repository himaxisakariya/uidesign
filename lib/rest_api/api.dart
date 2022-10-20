import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

logs(String message) {
  if (kDebugMode) {
    print(message);
  }
}
class RestService {
  static String baseUrl = "https://lookprstage.com/admin/";
  static String signApi = "/api/v1/data/signup";
  static String loginApi = "/api/v1/data/signin";
  static String googleApi = "/api/v1/data/signin";
  static String facbookApi = '/api/v1/data/signin';
  static String token = "";

  static Map<String, String> headers = {'Content-Type': 'application/json'};

  static dynamic postRestMethods(
      {@required String? endpoints,
        @required Map<String, dynamic>? bodyParam}) async {
    try {
      String url = '$baseUrl$endpoints';
      logs('Url --> $url');
      Response response = await http.post(Uri.parse(url),
          headers: headers, body: jsonEncode(bodyParam));
      logs('Response statusCode --> ${response.statusCode}');
      if (response.statusCode == 200 || response.statusCode == 201) {
        logs('Response body --> ${response.body}');
        return response.body;
      }
    } catch (e) {
      logs('post exception$endpoints --> $e');
      return null;
    }
  }
}
