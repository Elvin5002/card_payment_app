import 'package:card_payment_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppBorders {
  AppBorders._();

  static final inputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: AppColors.lightBr),
  );

  static final focusedBorder = inputBorder.copyWith(
    borderSide: const BorderSide(color: AppColors.light, width: 2),
  );

}