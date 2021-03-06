library discount;

import 'package:aloship/model/discount_info.p.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'discount_view.dart';
part 'discount_model.dart';
part 'discount_state.dart';

ChangeNotifierProvider<_DiscountModel> createDiscount() {
  return ChangeNotifierProvider<_DiscountModel>(
    create: (_) => _DiscountModel(),
    child: _DiscountView(),
  );
}
