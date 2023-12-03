import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:trimtime/core/utils/app_colors.dart';


class PhoneNumberField extends IntlPhoneField {
  PhoneNumberField({
    Key? key,
    required TextEditingController controller,
    Color fillColor = AppColors.white,
    Color errorTextColor = AppColors.red,
  }) : super(
          key: key,
          dropdownIconPosition: IconPosition.trailing,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          showDropdownIcon: false,
          flagsButtonMargin: const EdgeInsets.only(left: 15),
          controller: controller,
          onTap: () {},
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(
                color: AppColors.black,
              ),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: AppColors.red),
            ),
            fillColor: fillColor,
            filled: true,
            hintText: '* * * * * * * * * *',
            hintStyle: TextStyle(
              color: Colors.grey.shade400,
              fontSize: 15.0,
            ),
            errorStyle: TextStyle(
              color: errorTextColor,
              fontSize: 13.0,
            ),
            counterText: '',
          ),
          initialCountryCode: 'US',
          validator: (value) {
            if (value == null || controller.text.isEmpty) {
              return 'Please fill this field';
            } else if (controller.text.length < 10) {
              return 'Please enter a valid mobile number';
            }
            return null;
          },
          onChanged: (_) {},
        );
}
