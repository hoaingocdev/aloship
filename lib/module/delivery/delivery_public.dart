library delivery;

import 'package:aloship/module/departure_point/departure_point_public.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

import '../destination/destination_public.dart';

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
