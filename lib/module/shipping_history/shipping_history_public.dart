library shipping_history;

import 'package:aloship/model/model.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'shipping_history_view.dart';
part 'shipping_history_model.dart';
part 'shipping_history_state.dart';

ChangeNotifierProvider<_ShippingHistoryModel> createShippingHistory() {
  return ChangeNotifierProvider<_ShippingHistoryModel>(
    create: (_) => _ShippingHistoryModel(),
    child: _ShippingHistoryView(),
  );
}
