import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:flutter/material.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
   
    return Image.asset(
      Assets.images.appLogo,
 
      height: height,
    );
  }
}
