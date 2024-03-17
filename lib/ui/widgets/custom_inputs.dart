import 'package:flutter/material.dart';
import '../../constants/app_borders.dart';
import '../../constants/app_colors.dart';

class CustomInput extends StatefulWidget {
  const CustomInput({
    super.key,
    this.hint,
    this.label,
    this.controller,
    this.focus,
    this.onFieldSubmitted,
    this.validator, 
  });

  final String? hint;
  final String? label;
  final TextEditingController? controller;
  final FocusNode? focus;
  final void Function(String)? onFieldSubmitted;
  final String? Function(String?)? validator;

  @override
  State<CustomInput> createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: widget.focus,
      keyboardType: TextInputType.number,
      controller: widget.controller,
      onFieldSubmitted: widget.onFieldSubmitted,
      validator: widget.validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.lightBr,
        border: AppBorders.inputBorder,
        enabledBorder: AppBorders.inputBorder,
        disabledBorder: AppBorders.inputBorder,
        focusedBorder: AppBorders.focusedBorder,
        errorBorder: AppBorders.inputBorder.copyWith(
          borderSide: const BorderSide(color: AppColors.red),
        ),
        focusedErrorBorder: AppBorders.inputBorder.copyWith(
          borderSide: const BorderSide(color: AppColors.red),
        ),
        hintText: widget.hint,
        labelText: widget.label,
      ),
    );
  }
}
