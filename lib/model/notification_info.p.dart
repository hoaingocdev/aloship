import 'package:flutter/material.dart';

class NotificationInfo extends ChangeNotifier {
  final _data = {};
  String get title => _data['title'] ?? '';
  String get text => _data['text'] ?? '';
  String get time => _data['time'] ?? '';

  NotificationInfo.from(Map e) {
    _data.addAll(e);
  }
}
