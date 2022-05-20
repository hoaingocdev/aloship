import 'package:aloship/res/color.p.dart';
import 'package:flutter/material.dart';

import '../res/style.p.dart';

class TButton extends StatefulWidget {
  final VoidCallback? onPressed;
  final String text;
  final Color? borderColor;

  const TButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.borderColor,
  }) : super(key: key);
  @override
  _TButtonState createState() => _TButtonState();
}

class _TButtonState extends State<TButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.onPressed == null ? Colors.grey : Cl.red,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          height: 48,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: widget.borderColor ?? Colors.transparent,
          ),
          child: Center(
            child: Text(
              widget.text,
              style: St.body16500.copyWith(color: Cl.white),
            ),
          ),
        ),
      ),
    );
  }
}
