import 'package:flutter/material.dart';

class ServiceInfo extends ChangeNotifier {
  final _data = {};
  String get imageUrl => _data['imageUrl'] ?? '';
  String get name => _data['name'] ?? '';
  String get note => _data['note'] ?? '';

  ServiceInfo.from(Map e) {
    _data.addAll(e);
  }
}
