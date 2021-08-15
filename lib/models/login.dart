// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  LoginResponse({
    required this.errorcode,
    required this.errormessage,
    required this.values,
  });

  int errorcode;
  String errormessage;
  Values values;

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        errorcode: json["errorcode"],
        errormessage: json["errormessage"],
        values: Values.fromJson(json["values"]),
      );

  Map<String, dynamic> toJson() => {
        "errorcode": errorcode,
        "errormessage": errormessage,
        "values": values.toJson(),
      };
}

class Values {
  Values({
    required this.the0,
    required this.customerInfo,
  });

  The0 the0;
  CustomerInfo customerInfo;

  factory Values.fromJson(Map<String, dynamic> json) => Values(
        the0: The0.fromJson(json["0"]),
        customerInfo: CustomerInfo.fromJson(json["customerInfo"]),
      );

  Map<String, dynamic> toJson() => {
        "0": the0.toJson(),
        "customerInfo": customerInfo.toJson(),
      };
}

class CustomerInfo {
  CustomerInfo({
    required this.customerId,
    required this.userId,
    required this.firstname,
    this.lastname,
    required this.companyName,
    required this.email,
    required this.contactNo,
    this.place,
    this.gender,
    required this.address,
    required this.gstNumber,
    required this.status,
    this.image,
    this.termsConditions,
    required this.addedDate,
    required this.updatedDate,
  });

  String customerId;
  String userId;
  String firstname;
  dynamic lastname;
  String companyName;
  String email;
  String contactNo;
  dynamic place;
  dynamic gender;
  String address;
  String gstNumber;
  String status;
  dynamic image;
  dynamic termsConditions;
  DateTime addedDate;
  DateTime updatedDate;

  factory CustomerInfo.fromJson(Map<String, dynamic> json) => CustomerInfo(
        customerId: json["customer_id"],
        userId: json["user_id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        companyName: json["company_name"],
        email: json["email"],
        contactNo: json["contact_no"],
        place: json["place"],
        gender: json["gender"],
        address: json["address"],
        gstNumber: json["gst_number"],
        status: json["status"],
        image: json["image"],
        termsConditions: json["terms&conditions"],
        addedDate: DateTime.parse(json["added_date"]),
        updatedDate: DateTime.parse(json["updated_date"]),
      );

  Map<String, dynamic> toJson() => {
        "customer_id": customerId,
        "user_id": userId,
        "firstname": firstname,
        "lastname": lastname,
        "company_name": companyName,
        "email": email,
        "contact_no": contactNo,
        "place": place,
        "gender": gender,
        "address": address,
        "gst_number": gstNumber,
        "status": status,
        "image": image,
        "terms&conditions": termsConditions,
        "added_date": addedDate.toIso8601String(),
        "updated_date": updatedDate.toIso8601String(),
      };
}

class The0 {
  The0({
    required this.userId,
    required this.username,
    required this.password,
    required this.addedDate,
    required this.accessTocken,
  });

  String userId;
  String username;
  String password;
  DateTime addedDate;
  String accessTocken;

  factory The0.fromJson(Map<String, dynamic> json) => The0(
        userId: json["user_id"],
        username: json["username"],
        password: json["password"],
        addedDate: DateTime.parse(json["added_date"]),
        accessTocken: json["access_tocken"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "username": username,
        "password": password,
        "added_date": addedDate.toIso8601String(),
        "access_tocken": accessTocken,
      };
}
