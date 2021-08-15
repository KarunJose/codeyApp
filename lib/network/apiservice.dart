import 'dart:convert';
import 'package:codey/models/signup.dart';
import 'package:http/http.dart' as http;

class CodeyApiServices {
  String API_URL = "https://foodndrive.com/codey/index.php/api/PublicAppApis/";

  //customer registeration
  Future<CustomerRegistrationResponse?> signUp(
      String name, String contactNo, String password) async {
    //var queryParameters = {'Content-type': 'application/json'};

    var bodyParameters = {
      'name': name,
      'contact_no': contactNo,
      'password': password,
    };

    final response = await http.post(
        Uri.parse(API_URL + 'customer_registration'),
        body: bodyParameters);
    try {
      if (response.statusCode == 200) {
        return CustomerRegistrationResponse.fromJson(
            json.decode(response.body));
      } else if (response.statusCode == 401)
        return CustomerRegistrationResponse.fromJson(
            json.decode(response.body));
    } catch (exception) {}
    return null;
  }
}
