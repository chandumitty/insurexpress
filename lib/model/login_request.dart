import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class LoginRequest {
  String emailID;
  String password;

  LoginRequest({required this.emailID, required this.password});
  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {'email': emailID, 'password': password};
    return map;
  }
}
