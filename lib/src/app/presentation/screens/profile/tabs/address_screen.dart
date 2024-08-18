import 'package:app/src/app/presentation/components/custom_app_bar.dart';
import 'package:app/src/app/presentation/components/global_text_field.dart';
import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/profile/tabs/add_address_screen.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:app/src/app/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({super.key});

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: customAppBar(
        context,
        title: "Address",
        isDetail: true,
        actionWidgets: Row(
          children: [
            GestureDetector(
              onTap: () {
                RouteNavigator.route(context, AddAddressScreen());
              },
              child: const Icon(
                Icons.add,
                color: kPrimaryColor,
                size: 30,
              ),
            ),
          ],
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
                    controller: addressController,
                    hintText: "20 Hai Bà Trưng, Hoàn Kiếm, Hà Nội",
                    maxLine: 1,
                    isFilled: true,
                    isReadOnly: true,
                    suffixIcon: const Icon(
                      Icons.check_circle_sharp,
                      color: kPrimaryColor,
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
                    hintText: "30 Bà Triệu, Hoàn Kiếm, Hà Nội",
                    isFilled: true,
                    maxLine: 1,
                    isReadOnly: true,
                    validator: (s) => Utils.validateInput(s, minValue: 6),
                  ),
                  const SizedBox(height: kPadding * 3),

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
