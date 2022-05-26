library delivery;

import 'package:aloship/model/model.dart';
import 'package:aloship/module/module.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'delivery_view.dart';
part 'delivery_model.dart';
part 'delivery_state.dart';
part 'widget/dashed_line_painter.dart';

ChangeNotifierProvider<_DeliveryModel> createDelivery() {
  return ChangeNotifierProvider<_DeliveryModel>(
    create: (_) => _DeliveryModel(),
    child: _DeliveryView(),
  );
}
