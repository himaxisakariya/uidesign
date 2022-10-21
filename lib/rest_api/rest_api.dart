import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'package:uidesign/rest_api/api.dart';

class rest_constant{
  static const baseurl = 'https://lookprstage.com/admin/';
  static const signup = '/api/v1/data/signup';
}
class rest_service{
  static Map<String, String> headers = {'Content-Type': 'application/json'};
    static dynamic PostRestApi(@required String? endponits, @required Map<String, dynamic>? bodyParam) async {
      try {
        String Url = '${rest_constant.baseurl},${rest_constant.signup}';
        logs('Url --> $Url');
        Response response = await post(Uri.parse(Url),
            headers: headers, body: jsonEncode(bodyParam));
        logs('Response statusCode --> ${response.statusCode}');
        if (response.statusCode == 200 || response.statusCode == 201) {
          logs('Response body --> ${response.body}');
          return response.body;
        }
      } catch (message) {
        logs('exception in post ${rest_constant.signup} --> $message');
        return null;
      }

    }
    static dynamic GetRestApi() async {
      try{
        String Url = rest_constant.baseurl;
        logs('Url -->$Url');
        Response response = await get(Uri.parse(Url),headers: headers);
        logs('Response statusCode --> ${response.statusCode}');
        if(response.statusCode == 200 || response.statusCode == 201)
          {
            logs('Response body --> ${response.body}');
          }
      }
      catch(message){
        logs('exception in get --> $message');
      }
    }
}