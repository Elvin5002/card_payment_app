import 'package:card_payment_app/constants/app_colors.dart';
import 'package:card_payment_app/constants/app_paddings.dart';
import 'package:card_payment_app/constants/app_text_styles.dart';
import 'package:card_payment_app/constants/app_texts.dart';
import 'package:card_payment_app/extentions/num_extentions.dart';
import 'package:card_payment_app/ui/widgets/custom_buttons.dart';
import 'package:card_payment_app/ui/widgets/custom_inputs.dart';
import 'package:card_payment_app/ui/widgets/save_info.dart';
import 'package:card_payment_app/ui/widgets/secure_info.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.brown,
        appBar: AppBar(
          title: const Text(
            AppTexts.paymentDet,
            style: AppTextStyles.boldTxt,
          ),
          backgroundColor: AppColors.brown,
        ),
        body: Padding(
            padding: AppPaddings.a20,
            child: Form(
              key: formKey,
              child: ListView(
                children: [
                  Text(
                    AppTexts.cardNum,
                    style: AppTextStyles.mediumTxt,
                  ),
                  5.h,
                  CustomInput(
                    validator: (v) {
                      if (v == null || v.isEmpty) {
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
                      if (v == null || v.isEmpty) {
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
                            if (v == null || v.isEmpty) {
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
                          label: AppTexts.cvv,
                          validator: (v) {
                            if (v == null || v.isEmpty) {
                              return 'Please enter cvv code';
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  36.h,
                  SaveInfo(),
                  56.h,
                  CustomButtons(
                    text: Text(
                      AppTexts.pay,
                      style: AppTextStyles.btnTxt,
                    ),
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        setState(() {});
                        await Future.delayed(
                            const Duration(milliseconds: 2000));
                        setState(() {});
                        return;
                      }
                    },
                  ),
                  24.h,
                  const SecureInfo(),
                ],
              ),
            )));
  }
}
