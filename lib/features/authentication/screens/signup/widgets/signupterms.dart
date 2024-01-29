import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/constants/text_strings.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/utils/constants/colors.dart';

class TTermsAndConditionCheckBox extends StatelessWidget {
  const TTermsAndConditionCheckBox({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(width: 24 , height: 24 ,child: Checkbox(value: true, onChanged: (value) {} )),
        const SizedBox(width: Sizes.spaceBtwItems,),
        Text.rich(
            TextSpan(children: [

              TextSpan(text: TTexts.iAgreeTo , style: Theme.of(context).textTheme.bodyMedium ),
              TextSpan(text: TTexts.privacyPolicy, style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? TColors.white : TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? TColors.white : TColors.primary,
              ) ),

              TextSpan(text: TTexts.and , style: Theme.of(context).textTheme.bodyMedium ),
              TextSpan(text: TTexts.termsandconditions, style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? TColors.white : TColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? TColors.white : TColors.primary,
              ) ),
            ])),
      ],
    );
  }
}