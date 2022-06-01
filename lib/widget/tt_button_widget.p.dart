import 'package:aloship/res/res.dart';
import 'package:flutter/material.dart';

class TButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final double? padding;
  final bool hasIcon;
  final bool? isSelected;

  const TButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.padding,
    this.hasIcon = false,
    this.isSelected = true,
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
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (hasIcon) ...[
                Image.asset(Id.ic_logout),
                const SizedBox(width: 10),
              ],
              Text(
                text,
                style: St.body16500.copyWith(color: Cl.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
