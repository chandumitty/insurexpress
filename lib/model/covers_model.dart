import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class CoversModel {
  String coverCategory;
  String insuranceType;
  String description;
  String status;
  String note;
  String userid;
  //int amount;
  String currency;
  //int deductible;
  String coverId;

  CoversModel({
    required this.coverCategory,
    required this.insuranceType,
    required this.description,
    required this.status,
    required this.note,
    required this.userid,
    // required this.amount,
    required this.currency,
    // required this.deductible,
    required this.coverId,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "cover_Id": coverId,
      "coverCategory": coverCategory,
      "insuranceType": insuranceType,
      "description": description,
      "status": status,
      "note": note,
      "user_id": userid,
      // "amount": amount,
      "currency": currency,
      // "deductible": deductible,
    };
    return map;
  }
}
