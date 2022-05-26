import 'package:flutter/material.dart';

class ShippingImformationInfo extends ChangeNotifier {
  final _data = {};
  String get distance => _data['distance'] ?? '';
  String get advanceMoney => _data['dadvanceMoney'] ?? '';
  String get fee => _data['fee'] ?? '';
  String get voucher => _data['voucher'] ?? '';

  ShippingImformationInfo.from(Map e) {
    _data.addAll(e);
  }
}
