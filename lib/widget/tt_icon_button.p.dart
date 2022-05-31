import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';

class TTButtonWidget extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? top;

  const TTButtonWidget({
    Key? key,
    this.onPressed,
    this.top,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 25,
      child: Material(
        color: Colors.transparent,
        child: IconButton(
          onPressed: onPressed,
          icon: Image.asset(Id.ic_arrow_back),
        ),
      ),
    );
  }
}
