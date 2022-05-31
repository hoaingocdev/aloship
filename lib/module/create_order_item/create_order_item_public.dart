library drive_info;

import 'package:aloship/model/model.dart';
import 'package:aloship/module/module.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'create_order_item_view.dart';
part 'create_order_item_model.dart';
part 'create_order_item_state.dart';

ChangeNotifierProvider<_CreateOrderItemModel> createCreateOrderItem() {
  return ChangeNotifierProvider<_CreateOrderItemModel>(
    create: (_) => _CreateOrderItemModel(),
    child: _CreateOrderItemView(),
  );
}
