import 'package:flutter/material.dart';

class DiscountInfo extends ChangeNotifier {
  final _data = {};
  String get imageUrl => _data['imageUrl'] ?? '';
  String get title => _data['title'] ?? '';
  String get description => _data['description'] ?? '';
  String get expiredDate => _data['expiredDate'] ?? '';

  DiscountInfo.from(Map e) {
    _data.addAll(e);
  }
}
