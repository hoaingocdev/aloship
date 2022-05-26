import 'package:aloship/res/color.p.dart';
import 'package:flutter/material.dart';

import '../res/style.p.dart';

class TButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? borderColor;
  final double? padding;

  const TButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.borderColor,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: onPressed == null ? Colors.grey : Cl.red,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 48,
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: padding ?? 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: borderColor ?? Colors.transparent,
          ),
          child: Center(
            child: Text(
              text,
              style: St.body16500.copyWith(color: Cl.white),
            ),
          ),
        ),
      ),
    );
  }
}
