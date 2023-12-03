import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trimtime/core/utils/app_colors.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.validator,
    this.inputFormat,
    this.suffixIcon,
    this.keyType = TextInputType.emailAddress,
    this.errorTextColor = AppColors.red,
    this.fillColor = AppColors.white,
    this.isBordered = true,
    this.isObscured = false,
  });
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormat;
  final Widget? suffixIcon;
  final TextInputType keyType;
  final Color errorTextColor;
  final Color fillColor;
  final bool isBordered;
  final bool isObscured;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: controller,
        validator: validator,
        onTapOutside: (event) {
          FocusScope.of(context).unfocus();
        },
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: isBordered ? const Color(0xFF000000) : Colors.transparent,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            borderSide: BorderSide(
              color: AppColors.black,
            ),
          ),
          fillColor: fillColor,
          filled: true,
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 15.0,
          ),
          errorStyle: TextStyle(
            color: errorTextColor,
            fontSize: 13.0,
          ),
          suffixIcon: suffixIcon,
        ),
        style: const TextStyle(
          color: AppColors.black,
          fontWeight: FontWeight.w500,
        ),
        obscureText: isObscured,
        keyboardType: keyType,
        inputFormatters: inputFormat,
        onTap: () {
          FocusNode().requestFocus(FocusNode(canRequestFocus: true));
        });
  }
}
