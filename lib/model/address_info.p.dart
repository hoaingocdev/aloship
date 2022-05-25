import 'package:flutter/material.dart';

class AddressInfo extends ChangeNotifier {
  final _data = {};
  String get address => _data['address'] ?? '';

  AddressInfo.from(Map e) {
    _data.addAll(e);
  }
}
