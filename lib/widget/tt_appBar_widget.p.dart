import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';

class TTAppBar {
  static PreferredSizeWidget create({
    String? title,
    VoidCallback? onBackPressed,
  }) {
    return AppBar(
      backgroundColor: Cl.white,
      title: Text(
        title ?? '',
        style: St.body18500.copyWith(color: Cl.black),
      ),
      leading: InkWell(
        onTap: onBackPressed,
        child: Image.asset(Id.ic_arrow_back),
      ),
    );
  }
}
