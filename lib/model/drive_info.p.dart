import 'package:flutter/material.dart';

class DriveInfo extends ChangeNotifier {
  final _data = {};
  String get imageUrl => _data['imageUrl'] ?? '';
  String get name => _data['name'] ?? '';
  String get bks => _data['bks'] ?? '';
  String get phone => _data['phone'] ?? '';
  String get old => _data['old'] ?? '';
  String get place => _data['place'] ?? '';

  DriveInfo.from(Map e) {
    _data.addAll(e);
  }
}
