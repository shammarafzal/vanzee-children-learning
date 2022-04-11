import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vanzee/Model/get_books.dart';
import 'package:vanzee/Model/get_me.dart';

class API {
  static var client = http.Client();
  final String baseUrl = 'talktalesapps.com';
  var image_base_url = 'http://talktalesapps.com/storage/';
  register(String name, String email, String password, String age) async {
    var url = Uri.http(baseUrl, '/api/register', {"q": "dart"});
    final response = await http.post(url, body: {
      "name": name,
      "email": email,
      "password": password,
      "age": age,
    });
    if (response.statusCode == 200) {
      final String responseString = response.body;
      return jsonDecode(responseString);
    } else {
      final String responseString = response.body;
      return jsonDecode(responseString);
    }
  }

  verifyEmailToken(String token, String email) async {
    var url = Uri.http(baseUrl, '/api/verifyEmail', {"q": "dart"});
    final response =
        await http.post(url, body: {"token": token, "email": email});
    if (response.statusCode == 200) {
      final String responseString = response.body;
      return jsonDecode(responseString);
    } else {
      final String responseString = response.body;
      return jsonDecode(responseString);
    }
  }

  login(String email, String password) async {
    var url = Uri.http(baseUrl, '/api/login', {"q": "dart"});
    final response = await http.post(url, body: {
      "email": email,
      "password": password,
    });
    if (response.statusCode == 200) {
      final String responseString = response.body;
      print('qq2');
      print(responseString);
      return jsonDecode(responseString);
    } else {
      final String responseString = response.body;
      print('qq');
      print(responseString);
      return jsonDecode(responseString);
    }
  }

  logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    var url = Uri.http(baseUrl, '/api/logout', {"q": "dart"});
    final response = await http.post(url, headers: {
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      final String responseString = response.body;
      return jsonDecode(responseString);
    } else {
      final String responseString = response.body;
      return jsonDecode(responseString);
    }
  }

  Future<List<GetMe>> getMe() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    var url = Uri.http(baseUrl, '/api/user', {"q": "dart"});
    var response = await client.get(url, headers: {
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      return getMeFromJson(response.body);
    } else {
      return getMeFromJson(response.statusCode.toString());
    }
  }

  Future<List<Books>> getBooks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    var url = Uri.http(baseUrl, '/api/fetchBooks', {"q": "dart"});
    var response = await client.get(url, headers: {
      'Authorization': 'Bearer $token',
    });
    if (response.statusCode == 200) {
      print(response.body);
      return booksFromJson(response.body);
    } else {
      return booksFromJson(response.statusCode.toString());
    }
  }
}
