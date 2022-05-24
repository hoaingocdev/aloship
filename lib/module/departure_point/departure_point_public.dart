library departure_point;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'departure_point_view.dart';
part 'departure_point_model.dart';
part 'departure_point_state.dart';

ChangeNotifierProvider<_DeparturePointModel> createDeparturePoint() {
  return ChangeNotifierProvider<_DeparturePointModel>(
    create: (_) => _DeparturePointModel(),
    child: _DeparturePointView(),
  );
}
