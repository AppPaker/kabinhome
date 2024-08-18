import 'package:app/src/app/presentation/components/app_logo_widget.dart';
import 'package:app/src/app/presentation/components/custom_button.dart';
import 'package:app/src/app/presentation/components/global_text_field.dart';
import 'package:app/src/app/presentation/navbar/bottom_navbar.dart';
import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/auth/forgot_password/forget_password_screen.dart';
import 'package:app/src/app/presentation/screens/auth/signup_screen.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:app/src/app/presentation/utils/utils.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailAddressController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool passwordVisibility = true;
  bool stayLoggedIn = true;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar:   Padding(
                    padding: const EdgeInsets.symmetric(vertical: kPadding*2),
                    child: Text.rich(
                      
                      TextSpan(
                        text: "Bằng cách đăng nhập, bạn đồng ý với\niều khoản sử dụng và ",
                        
                        style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            
                            color: kBlackColor
                            
                            
                            ),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                // Navigator.pop(context);
                                RouteNavigator.route(context, const SignupScreen());
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
          
                  // <------------------------  EMAIL ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.telephoneNumber,
                    ],
                    fieldTitle: "Phone Number",
                    controller: emailAddressController,
                    hintText: "",
                    validator: (s) => Utils.validateInput(
                      s,
                      // isEmail: true
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
                      overlayColor: MaterialStateProperty.all(Colors.transparent),
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
                  const SizedBox(height: kPadding * 2),
          
                  GestureDetector(
                    onTap: () {
                          RouteNavigator.route(context, const ForgotPasswordScreen());

                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(Assets.svg.forgotPassSVG),
                        const Padding(
                          padding: EdgeInsets.only(left: kPadding),
                          child: Text(
                            "Forgot Password",
                            style: TextStyle(
                                fontSize: 14,
                                color: kBlackColor,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ),
          
                  const SizedBox(height: kPadding * 3),
          
                  SizedBox(
                    height: size.height / 100 * 6,
                    child: CustomButton(
                        onPressed: () {
                          RouteNavigator.replacementroute(
          context,
          BottomNavBar(
            selectedTab: 0,
          ));
                        
                        },
                        showLoadingIndicator: true,
                        text: "LOG IN"),
                  ),
                            const SizedBox(height: kPadding * 3),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
