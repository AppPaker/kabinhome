import 'package:app/src/app/presentation/components/custom_app_bar.dart';
import 'package:app/src/app/presentation/components/global_text_field.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:app/src/app/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController duongController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController emailController = TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar:
          customAppBar(context, title: "Personal information", isDetail: true),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: kPadding * 3),
                  // <------------------------  PASSWORD ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.name,
                    ],
                    controller: duongController,
                    fieldTitle: "Dương",
                    hintText: "Dương",
                    maxLine: 1,
                    isFilled: true,
                    suffixIcon: const Icon(
                      Icons.edit_note_outlined,
                      color: kBlackColor,
                      size: 22.0,
                    ),
                    validator: (s) => Utils.validateInput(s, minValue: 6),
                  ),
                  const SizedBox(height: kPadding * 3),
                    // <------------------------  PASSWORD ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.telephoneNumber,
                    ],
                    controller: phoneNumberController,
                    fieldTitle: "Phone Number",
                    hintText: "0912345678",
                    isFilled: true,
                    maxLine: 1,
                    suffixIcon: const Icon(
                      Icons.edit_note_outlined,
                      color: kBlackColor,
                      size: 22.0,
                    ),
                    validator: (s) => Utils.validateInput(s, minValue: 6),
                  ),
                  const SizedBox(height: kPadding * 3),
                  // <------------------------  PASSWORD ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.birthdayDay,
                    ],
                    controller: dobController,
                    fieldTitle: "DOB",
                    hintText: "23/10/2001",
                    isFilled: true,
                    maxLine: 1,
                    suffixIcon: const Icon(
                      Icons.edit_note_outlined,
                      color: kBlackColor,
                      size: 22.0,
                    ),
                    validator: (s) => Utils.validateInput(s, minValue: 6),
                  ),
                  const SizedBox(height: kPadding * 3),
                  // <------------------------  CONFIRM PASSWORD ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.email,
                    ],
                    controller: emailController,
                    fieldTitle: "Email",
                    hintText: "duong@gmail.com",
                    isFilled: true,
                    maxLine: 1,
                    suffixIcon: const Icon(
                      Icons.edit_note_outlined,
                      color: kBlackColor,
                      size: 22.0,
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
