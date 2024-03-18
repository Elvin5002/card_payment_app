import 'package:card_payment_app/constants/app_colors.dart';
import 'package:card_payment_app/constants/app_radiuses.dart';
import 'package:card_payment_app/constants/app_text_styles.dart';
import 'package:card_payment_app/constants/app_texts.dart';
import 'package:card_payment_app/extentions/material_state_property.dart';
import 'package:flutter/material.dart';

class SaveInfo extends StatefulWidget {
  SaveInfo({Key? key}) : super(key: key);

  @override
  State<SaveInfo> createState() => _SaveInfoState();
}

class _SaveInfoState extends State<SaveInfo> {
  final controller = TextEditingController();
  bool value = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: AppRadiuses.a10,
        border: Border.all(width: 0.5, color: AppColors.light)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppTexts.saveInfo,
              style: AppTextStyles.mediumTxt,
            ),
            Switch(
              overlayColor: AppColors.light.mspAll,
              trackColor: AppColors.lightBr.mspAll,
              thumbColor: AppColors.yellow.mspAll,
              onChanged: (bool value) {
                setState(() {});
              }, 
              value: value,
            ),
          ],
        ),
      ),
    );
  }
}
