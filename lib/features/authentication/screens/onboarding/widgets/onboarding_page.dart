import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:ecommerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });
  final String image , title , subTitle;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.all(Sizes.defaultSpace),

      child:  Column(
        children: [
          Image(
              width: THelperFunctions.screenHeight() * 0.8,
              height: THelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height:Sizes.spaceBtwItems ,),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,),
        ],
      ),
    );
  }
}
