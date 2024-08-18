import 'package:app/src/app/presentation/components/app_logo_widget.dart';
import 'package:app/src/app/presentation/components/custom_button.dart';
import 'package:app/src/app/presentation/components/global_text_field.dart';
import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/auth/verify_phoneno_screen.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:app/src/app/presentation/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController firstLastNameController = TextEditingController();
  final TextEditingController phoneNoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cPasswordController = TextEditingController();
  final TextEditingController refferalController = TextEditingController();

  bool passwordVisibility = true;
  bool cPasswordVisibility = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: kPadding * 15),

                  Center(
                    child: AppLogoWidget(
                      height: size.height / 100 * 5,
                    ),
                  ),
                  const SizedBox(height: kPadding * 10),

                  // <------------------------  FIRST AND LAST NAME ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.name,
                    ],
                    fieldTitle: "First and last name",
                    controller: firstLastNameController,
                    hintText: "",
                    validator: (s) => Utils.validateInput(
                      s,
                    ),
                  ),
                  const SizedBox(height: kPadding * 3),
                  // <------------------------  PHONE NUMBER ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.telephoneNumber,
                    ],
                    fieldTitle: "Phone number",
                    controller: phoneNoController,
                    hintText: "",
                    validator: (s) => Utils.validateInput(
                      s,
                    ),
                  ),
                  const SizedBox(height: kPadding * 3),
                  // <------------------------  PASSWORD ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.password,
                    ],
                    controller: passwordController,
                    obscureText: passwordVisibility,
                    fieldTitle: "Password",
                    hintText: "",
                    maxLine: 1,
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => passwordVisibility = !passwordVisibility,
                      ),
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        passwordVisibility
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: kLightGreyColor,
                        size: 22.0,
                      ),
                    ),
                    validator: (s) => Utils.validateInput(s, minValue: 6),
                  ),
                  const SizedBox(height: kPadding * 3),
                  // <------------------------  CONFIRM PASSWORD ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.password,
                    ],
                    controller: passwordController,
                    obscureText: cPasswordVisibility,
                    fieldTitle: "Confirm password",
                    hintText: "",
                    maxLine: 1,
                    suffixIcon: InkWell(
                      onTap: () => setState(
                        () => cPasswordVisibility = !cPasswordVisibility,
                      ),
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      focusNode: FocusNode(skipTraversal: true),
                      child: Icon(
                        cPasswordVisibility
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined,
                        color: kLightGreyColor,
                        size: 22.0,
                      ),
                    ),
                    validator: (s) => Utils.validateInput(s, minValue: 6),
                  ),
                  const SizedBox(height: kPadding * 3),

                  // <------------------------  REFERRAL CODE ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.name,
                    ],
                    fieldTitle: "Referral code",
                    controller: refferalController,
                    hintText: "",
                    validator: (s) => Utils.validateInput(
                      s,
                    ),
                  ),

                  const SizedBox(height: kPadding * 5),

                  SizedBox(
                    height: size.height / 100 * 6,
                    child: CustomButton(
                        onPressed: () 
                        {

                          RouteNavigator.route(context, VerifyPhoneNoScreen());
                        },
                        showLoadingIndicator: true,
                        text: "REGISTER"),
                  ),
                  const SizedBox(height: kPadding * 3),

                  Align(
                    alignment: AlignmentDirectional.bottomCenter,
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(vertical: kPadding * 2),
                      child: Text.rich(
                        TextSpan(
                          text:
                              "Bằng cách đăng nhập, bạn đồng ý với\niều khoản sử dụng và ",
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: kBlackColor),
                          children: [
                            TextSpan(
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                               
                                },
                              text: "Chính sách bảo mật của Kabin? ",
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                  color: kPrimaryColor),
                            )
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
