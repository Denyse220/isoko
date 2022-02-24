import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class ApiCall {
  final url = "https://gorest.co.in/";
  var dio = Dio();

  getData(apiUrl) async {
    var fullUrl = url + apiUrl;
    print(fullUrl);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    return await dio.get(fullUrl,
        options: Options(headers: {
          'Content-Type': 'application/json',
          // 'Authorization': 'Bearer $token'
        }));
  }

  postData(apiUrl, data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    var fullUrl = url + apiUrl;
    return await dio.post(fullUrl,
        data: data,
        options: Options(headers: {
          'Content-Type': 'application/json',
          // 'Authorization': 'Bearer $token'
        }));
  }
}
