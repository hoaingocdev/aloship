library destination;

import 'package:aloship/model/model.dart';
import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aloship/widget/widget.dart';

part 'destination_view.dart';
part 'destination_model.dart';
part 'destination_state.dart';

ChangeNotifierProvider<_DestinationModel> createDestination() {
  return ChangeNotifierProvider<_DestinationModel>(
    create: (_) => _DestinationModel(),
    child: _DestinationView(),
  );
}
