import 'package:card_payment_app/constants/app_colors.dart';
import 'package:card_payment_app/constants/app_text_styles.dart';
import 'package:card_payment_app/constants/app_texts.dart';
import 'package:card_payment_app/extentions/num_extentions.dart';
import 'package:flutter/material.dart';

class SecureInfo extends StatelessWidget {
const SecureInfo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.lock,
          color: AppColors.green,
          size: 15,
        ),
        8.w,
        Text(
          AppTexts.secure,
          style: AppTextStyles.secureTxt,
        ),
      ],
    );
  }
}