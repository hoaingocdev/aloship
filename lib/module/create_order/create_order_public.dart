library create_order;

import 'package:aloship/model/model.dart';
import 'package:aloship/module/module.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'create_order_view.dart';
part 'create_order_model.dart';
part 'create_order_state.dart';

ChangeNotifierProvider<_CreateOrderModel> createCreateOrder(List<AddressInfo> addresses) {
  return ChangeNotifierProvider<_CreateOrderModel>(
    create: (_) => _CreateOrderModel(addresses),
    child: _CreateOrderView(),
  );
}
