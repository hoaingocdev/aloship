import 'package:aloship/res/res.dart';
import 'package:aloship/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum TextType { phone, password, email, normal }

class TTextfield extends StatelessWidget {
  final String hint;
  final bool obscureText;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatters;
  final String? Function(String?)? validator;
  final TextType textType;
  final bool isRequired;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final bool hasBorder;
  final Color? fillColor;
  final int? maxlines;
  final EdgeInsetsGeometry? contentPadding;
  final bool enabled;

  const TTextfield({
    Key? key,
    required this.hint,
    this.obscureText = false,
    this.onChanged,
    this.controller,
    this.textInputType,
    this.inputFormatters,
    this.validator,
    this.textType = TextType.normal,
    this.isRequired = false,
    this.prefixWidget,
    this.suffixWidget,
    this.hasBorder = true,
    this.fillColor,
    this.maxlines,
    this.contentPadding,
    this.enabled = true,
  }) : super(key: key);

  String? validate(String? value) {
    switch (textType) {
      case TextType.phone:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập số điện thoại';
        }
        if (value?.length != 10) {
          return 'Số điện thoại không hợp lệ';
        }
        return null;
      case TextType.password:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập mật khẩu';
        }
        final length = value?.length ?? 0;
        if (length < 4 || length > 30) {
          return 'Mật khẩu phải từ 4-30 ký tự';
        }
        return null;
      case TextType.email:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập email';
        }
        if (!Validator.validEmail(value ?? '')) {
          return 'Email không đúng định dạng';
        }
        return null;
      case TextType.normal:
        if (isRequired && (value == null || value.isEmpty)) {
          return 'Vui lòng nhập thông tin';
        }
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enabled,
      validator: validator ?? validate,
      keyboardType: textInputType,
      inputFormatters: inputFormatters,
      controller: controller,
      onChanged: onChanged,
      obscureText: obscureText,
      maxLines: maxlines,
      cursorColor: Cl.cl777777,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: St.body16400.copyWith(color: Cl.cl777777),
        fillColor: fillColor ?? Cl.white,
        filled: true,
        prefixIcon: prefixWidget,
        suffixIcon: suffixWidget,
        contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 20),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: hasBorder ? Cl.clC4C4C4 : Colors.transparent),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Cl.red, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Cl.red, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.redAccent),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
