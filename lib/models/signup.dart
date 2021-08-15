// To parse this JSON data, do
//
//     final customerRegistrationResponse = customerRegistrationResponseFromJson(jsonString);

import 'dart:convert';

CustomerRegistrationResponse customerRegistrationResponseFromJson(String str) => CustomerRegistrationResponse.fromJson(json.decode(str));

String customerRegistrationResponseToJson(CustomerRegistrationResponse data) => json.encode(data.toJson());

class CustomerRegistrationResponse {
    CustomerRegistrationResponse({
        required this.errorcode,
        required this.errormessage,
        required this.values,
    });

    int errorcode;
    String errormessage;
    Values values;

    factory CustomerRegistrationResponse.fromJson(Map<String, dynamic> json) => CustomerRegistrationResponse(
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
        required this.firstname,
        this.email,
        required this.contactNo,
        this.companyName,
        this.address,
        this.gstNumber,
        required this.userId,
        required this.status,
        required this.addedDate,
        required this.updatedDate,
        required this.customerId,
        required this.username,
        required this.password,
    });

    String firstname;
    dynamic email;
    String contactNo;
    dynamic companyName;
    dynamic address;
    dynamic gstNumber;
    String userId;
    int status;
    DateTime addedDate;
    DateTime updatedDate;
    String customerId;
    String username;
    String password;

    factory Values.fromJson(Map<String, dynamic> json) => Values(
        firstname: json["firstname"],
        email: json["email"],
        contactNo: json["contact_no"],
        companyName: json["company_name"],
        address: json["address"],
        gstNumber: json["gst_number"],
        userId: json["user_id"],
        status: json["status"],
        addedDate: DateTime.parse(json["added_date"]),
        updatedDate: DateTime.parse(json["updated_date"]),
        customerId: json["customer_id"],
        username: json["username"],
        password: json["password"],
    );

    Map<String, dynamic> toJson() => {
        "firstname": firstname,
        "email": email,
        "contact_no": contactNo,
        "company_name": companyName,
        "address": address,
        "gst_number": gstNumber,
        "user_id": userId,
        "status": status,
        "added_date": addedDate.toIso8601String(),
        "updated_date": updatedDate.toIso8601String(),
        "customer_id": customerId,
        "username": username,
        "password": password,
    };
}
