import 'package:app/src/app/presentation/components/custom_app_bar.dart';
import 'package:app/src/app/presentation/components/custom_button.dart';
import 'package:app/src/app/presentation/components/global_text_field.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:app/src/app/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class AddAddressScreen extends StatefulWidget {
  const AddAddressScreen({super.key});

  @override
  State<AddAddressScreen> createState() => _AddAddressScreenState();
}

class _AddAddressScreenState extends State<AddAddressScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController wardsController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: customAppBar(
        context,
        title: "Address",
        isDetail: true,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 100 * 6,
          child: CustomButton(
              onPressed: () {
                Navigator.pop(context);
              },
              showLoadingIndicator: true,
              text: "Add address"),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  const SizedBox(height: kPadding * 3),
                  // <------------------------  PASSWORD ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.name,
                    ],
                    controller: cityController,
                    hintText: "City",
                    maxLine: 1,
                    isFilled: true,
                    isReadOnly: true,
                    suffixIcon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: kGreyColor,
                      size: 22.0,
                    ),
                    validator: (s) => Utils.validateInput(s, minValue: 6),
                  ),
                  const SizedBox(height: kPadding * 3),
                  // <------------------------  PASSWORD ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.name,
                    ],
                    controller: districtController,
                    hintText: "District",
                    maxLine: 1,
                    isFilled: true,
                    isReadOnly: true,
                    suffixIcon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: kGreyColor,
                      size: 22.0,
                    ),
                    validator: (s) => Utils.validateInput(s, minValue: 6),
                  ),
                  const SizedBox(height: kPadding * 3),
                  // <------------------------  PASSWORD ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.name,
                    ],
                    controller: wardsController,
                    hintText: "Wards",
                    maxLine: 1,
                    isFilled: true,
                    isReadOnly: true,
                    suffixIcon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: kGreyColor,
                      size: 22.0,
                    ),
                    validator: (s) => Utils.validateInput(s, minValue: 6),
                  ),
                  const SizedBox(height: kPadding * 3),
                  // <------------------------  PASSWORD ------------------------>
                  GlobalTextField(
                    autofillHints: const [
                      AutofillHints.name,
                    ],
                    controller: addressController,
                    hintText: "Enter a specific address",
                    maxLine: 3,
                    isFilled: true,
                    isReadOnly: true,
                    suffixIcon: const Icon(
                      Icons.keyboard_arrow_down,
                      color: kGreyColor,
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
