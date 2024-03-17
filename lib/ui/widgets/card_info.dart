import 'package:card_payment_app/constants/app_text_styles.dart';
import 'package:card_payment_app/constants/app_texts.dart';
import 'package:card_payment_app/extentions/num_extentions.dart';
import 'package:card_payment_app/ui/widgets/custom_inputs.dart';
import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  CardInfo({Key? key}) : super(key: key);

  late final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppTexts.cardNum,
          style: AppTextStyles.mediumTxt,
        ),
        5.h,
        CustomInput(
          controller: controller,
          validator: (v) {
            if (v == null ) {
              return 'Please enter card num';
            }
            return null;
          },
        ),
        30.h,
        Text(
          AppTexts.cardHolder,
          style: AppTextStyles.mediumTxt,
        ),
        5.h,
        CustomInput(
          validator: (v) {
            if (v == null) {
              return 'Please enter holder name';
            }
            return null;
          },
        ),
        30.h,
        Row(
          children: [
            Expanded(
              flex: 3,
              child: CustomInput(
                label: AppTexts.expDate,
                validator: (v) {
                  if (v == null) {
                    return 'Please enter expiration date';
                  }
                  return null;
                },
              ),
            ),
            15.w,
            Expanded(
              flex: 2,
              child: CustomInput(
                controller: controller,
                label: AppTexts.cvv,
                validator: (v) {
                  if (v == null) {
                    return 'Please enter cvv code';
                  }
                  return null;
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
