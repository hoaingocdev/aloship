import 'package:flutter/material.dart';

class NotificationInfo extends ChangeNotifier {
  final _data = {};

  bool get _isRead => _data['isRead'] ?? false;
  String get title => _data['title'] ?? '';
  String get text => _data['text'] ?? '';
  String get time => _data['time'] ?? '';

  late bool isRead;

  NotificationInfo.from(Map e) {
    _data.addAll(e);
    isRead = _isRead;
  }

  void read() {
    isRead = true;
    notifyListeners();
  }
}
