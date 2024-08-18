import 'package:app/src/app/presentation/components/app_logo_widget.dart';
import 'package:app/src/app/presentation/components/custom_button.dart';
import 'package:app/src/app/presentation/components/global_text_field.dart';
import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/auth/forgot_password/new_password_screen.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:app/src/app/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController phoneNoController = TextEditingController();

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
                RouteNavigator.route(context, const NewPasswordScreen());
              },
              showLoadingIndicator: true,
              text: "SEND CONFIRMATION MESSAGE"),
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

                  // <------------------------  PHONE NUMBER ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.telephoneNumber,
                    ],
                    fieldTitle: "Phone Number",
                    controller: phoneNoController,
                    hintText: "",
                    validator: (s) => Utils.validateInput(
                      s,
                    ),
                  ),

                  const SizedBox(height: kPadding * 3),
                  const Text(
                    "Enter your registered phone number to retrieve your password",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: kBlackColor),
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
