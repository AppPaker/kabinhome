import 'package:app/src/app/presentation/components/custom_button.dart';
import 'package:app/src/app/presentation/navbar/bottom_navbar.dart';
import 'package:app/src/app/presentation/routes/routes_navigator.dart';

import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderCompletedScreen extends StatefulWidget {
  const OrderCompletedScreen({super.key});

  @override
  State<OrderCompletedScreen> createState() => _OrderCompletedScreenState();
}

class _OrderCompletedScreenState extends State<OrderCompletedScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kWhiteColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: SizedBox(
          height: size.height / 100 * 6,
          child: CustomButton(
              onPressed: () {

RouteNavigator.replacementroute(context, BottomNavBar(selectedTab: 0));

              }, showLoadingIndicator: true, text: "Done"),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: kPadding * 3),
              Center(child: SvgPicture.asset(Assets.svg.congratulationsSVG, height: size.height*0.2,)),
              const SizedBox(height: kPadding * 2),
            
              const Text(
                "Congratulations on your successful order. We will contact you as soon as possible",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: kBlackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
