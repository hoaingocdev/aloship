import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';

class TTAppBar {
  static PreferredSizeWidget create({
    String? title,
    List<Widget>? actions,
    VoidCallback? onBackPressed,
    String? image,
    bool hasIcon = true,
  }) {
    return AppBar(
      backgroundColor: Cl.white,
      centerTitle: true,
      title: Text(
        title ?? '',
        style: St.body18500.copyWith(color: Cl.black),
      ),
      leading: hasIcon
          ? InkWell(
              onTap: onBackPressed,
              child: Image.asset(Id.ic_arrow_back),
            )
          : null,
      actions: actions,
    );
  }
}
