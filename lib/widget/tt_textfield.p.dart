import 'package:aloship/res/color.p.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../res/style.p.dart';

class TTextfield extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;

  const TTextfield({
    Key? key,
    required this.hint,
    this.obscureText = false,
    this.onChanged,
    this.controller,
    this.textInputType,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: St.body16400.copyWith(color: Cl.cl777777),
        fillColor: Cl.white,
        filled: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Cl.clC4C4C4),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Cl.red),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
