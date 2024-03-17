import 'package:card_payment_app/constants/app_colors.dart';
import 'package:card_payment_app/constants/app_radiuses.dart';
import 'package:card_payment_app/extentions/context_extention.dart';
import 'package:card_payment_app/extentions/material_state_property.dart';
import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons(
      {Key? key,
      required this.text,
      this.onPressed,})
      : super(key: key);

  final Widget text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: AppColors.yellow.mspAll,
        fixedSize: Size(context.fW, 60).mspAll,
        shape: const RoundedRectangleBorder(
          borderRadius: AppRadiuses.a10,
        ).mspAll,
      ),
      child: text,
    );
  }
}
