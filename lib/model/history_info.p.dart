import 'package:flutter/material.dart';

class HistoryInfo extends ChangeNotifier {
  final _data = {};
  String get departurePoint => _data['departurePoint'] ?? '';
  String get destination => _data['destination'] ?? '';
  String get deliveryForm => _data['deliveryForm'] ?? '';
  String get codeOrders => _data['codeOrders'] ?? '';
  String get orderStatus => _data['orderStatus'] ?? '';
  String get code => _data['code'] ?? '';

  HistoryInfo.from(Map e) {
    _data.addAll(e);
  }
}
