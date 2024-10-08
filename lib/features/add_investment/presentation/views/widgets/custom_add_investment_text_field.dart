import 'package:capital_plus/core/constants/app_colors.dart';
import 'package:capital_plus/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAddInvestmentTextField extends StatelessWidget {
  const CustomAddInvestmentTextField({
    super.key,
    this.suffixIcon,
    required this.labelText,
    this.suffixIconConstraints,
    this.controller,
    this.readOnly,
    this.validator,
    this.onTap,
    this.maxLines,
    this.keyboardType,
    this.inputFormatters,
  });
  final String labelText;
  final Widget? suffixIcon;
  final BoxConstraints? suffixIconConstraints;
  final TextEditingController? controller;
  final bool? readOnly;
  final String? Function(String?)? validator;
  final void Function()? onTap;
  final int? maxLines;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: onTap,
      controller: controller,
      validator: validator,
      readOnly: readOnly ?? false,
      maxLines: maxLines ?? 1,
      keyboardType: keyboardType,
      cursorColor: AppColor.grey,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        label: Text(
          labelText,
          style: AppStyles.body2Regular.copyWith(
            color: AppColor.darkGrey,
          ),
        ),
        suffixIcon: suffixIcon,
        suffixIconConstraints: suffixIconConstraints ??
            BoxConstraints(
              maxHeight: 20.h,
              maxWidth: 20.w,
              minHeight: 20.h,
              minWidth: 20.w,
            ),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  UnderlineInputBorder buildBorder() {
    return const UnderlineInputBorder(
      borderSide: BorderSide(
        color: AppColor.grey,
      ),
    );
  }
}
