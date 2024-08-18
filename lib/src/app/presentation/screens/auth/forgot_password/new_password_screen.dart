// import 'package:app/src/app/presentation/components/app_logo_widget.dart';
import 'package:app/src/app/presentation/components/app_logo_widget.dart';
import 'package:app/src/app/presentation/components/custom_button.dart';
import 'package:app/src/app/presentation/components/global_text_field.dart';
import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/auth/login_screen.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:app/src/app/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController cPasswordController = TextEditingController();

  bool passwordVisibility = true;
  bool cPasswordVisibility = true;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kPadding * 2.5, vertical: 10),
        child: SizedBox(
          height: size.height / 100 * 6,
          child: CustomButton(
              onPressed: () {
                              RouteNavigator.replacementroute(context, const LoginScreen());

              },
              showLoadingIndicator: true,
              text: "CHANGE PASSWORD"),
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

                  const Text(
                    "Create strong passwords using a combination of letters, numbers, and symbols",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: kBlackColor),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
