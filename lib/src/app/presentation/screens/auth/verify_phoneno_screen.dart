import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/auth/login_screen.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyPhoneNoScreen extends StatefulWidget {
  const VerifyPhoneNoScreen({super.key});

  @override
  State<VerifyPhoneNoScreen> createState() => _VerifyPhoneNoScreenState();
}

class _VerifyPhoneNoScreenState extends State<VerifyPhoneNoScreen> {
  String pinOTP = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: kPadding * 15),
                Center(
                    child: SvgPicture.asset(Assets.svg.verifyPhoneSVG,
                        height: MediaQuery.of(context).size.height / 100 * 18)),
                const Text(
                  "Verify phone\nnumber",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 36,
                      color: kBlackColor,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: kPadding * 3),
                const Text(
                  "Please enter the 4-digit security number sent to the number registered phone",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: kBlackColor),
                ),
                const SizedBox(height: kPadding * 3),
                PinCodeTextField(
                  backgroundColor: Colors.transparent,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  appContext: context,
                  length: 4,
                  textStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: kPrimaryColor),
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  autoFocus: true,
                  showCursor: true,
                  cursorHeight: kPadding * 3,
                  cursorColor: kPrimaryColor,
                  obscureText: false,
                  pinTheme: PinTheme(
                    fieldWidth: 50,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(kRadius * 2),
                    inactiveColor: kLightGreyColor,
                    selectedColor: kGreyColor,
                    activeFillColor: kPrimaryColor,
                    selectedFillColor: kWhiteColor,
                  ),
                  // validator: (s) => Utils.validateInput(s, isRequired: true),
                  onSubmitted: (val) {
                    // confirmOTP();
                              RouteNavigator.replacementroute(context, const LoginScreen());
                 
                  },
                  onChanged: (val) {
                    setState(() {
                      pinOTP = val;
                    });
                  },
                ),
                const SizedBox(height: kPadding * 2),
                const Text(
                  "Resend the security code",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: kBlackColor),
                ),
                const SizedBox(height: kPadding),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

