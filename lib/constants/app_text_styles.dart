import 'package:card_payment_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyles{
  AppTextStyles._();

  static const _w600s16White = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.w600,
  );

  static const boldTxt = _w600s16White;
  
  static final mediumTxt = _w600s16White.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  static final secureTxt = _w600s16White.copyWith(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.green,
  );

  static final btnTxt = _w600s16White.copyWith(
    color: AppColors.black
  );
}