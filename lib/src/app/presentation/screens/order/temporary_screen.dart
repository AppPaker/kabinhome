import 'package:app/src/app/presentation/components/custom_button.dart';
import 'package:app/src/app/presentation/components/global_text_field.dart';
import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/order/order_completed_screen.dart';

import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:app/src/app/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TemporaryDetailScreen extends StatefulWidget {
  const TemporaryDetailScreen({super.key});

  @override
  State<TemporaryDetailScreen> createState() => _TemporaryDetailScreenState();
}

class _TemporaryDetailScreenState extends State<TemporaryDetailScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kWhiteColor,
        bottomNavigationBar:  Padding(
        padding: const EdgeInsets.all(kPadding),
        child: SizedBox(
                      height: size.height / 100 * 6,
                      child: CustomButton(
                          onPressed: () {
                          RouteNavigator.route(context, OrderCompletedScreen());
                          
                          },
                          showLoadingIndicator: true,
                          text: "Order"),
                    ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: AppBar(
          backgroundColor: kWhiteColor,
          elevation: 0,
          automaticallyImplyLeading: false,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(40),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        padding: const EdgeInsets.all(0),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: kPrimaryColor,
                        )),
                    const Padding(
                      padding: EdgeInsets.only(left: kPadding / 2),
                      child: Text(
                        "Order",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: kBlackColor,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                        padding: const EdgeInsets.all(kPadding),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(kPadding),
                              decoration: const BoxDecoration(
                                  color: kContainerColor,
                                  shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                Assets.svg.buyCartSVG,
                                height: size.height / 100 * 2.2,
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
                const SizedBox(height: kPadding * 2),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: kPadding * 3),

                GlobalTextField(
                  autofillHints: const [
                    AutofillHints.name,
                  ],
                  controller: phoneController,
                  hintText: "Luxuy",
                  maxLine: 1,
                  isFilled: true,
                  suffixIcon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: kBlackColor,
                    size: 22.0,
                  ),
                  validator: (s) => Utils.validateInput(s, minValue: 6),
                ),
                const SizedBox(height: kPadding * 2),
                GlobalTextField(
                  autofillHints: const [
                    AutofillHints.name,
                  ],
                  controller: phoneController,
                  fieldTitle: "Contact Info",
                  hintText: "Enter first and last name",
                  maxLine: 1,
                  isFilled: true,
                  suffixIcon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: kBlackColor,
                    size: 22.0,
                  ),
                  validator: (s) => Utils.validateInput(s, minValue: 6),
                ),
                const SizedBox(height: kPadding * 2),
                GlobalTextField(
                  autofillHints: const [
                    AutofillHints.name,
                  ],
                  controller: phoneController,
                  hintText: "Enter your phone number",
                  maxLine: 1,
                  isFilled: true,
                  suffixIcon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: kBlackColor,
                    size: 22.0,
                  ),
                  validator: (s) => Utils.validateInput(s, minValue: 6),
                ),
                const SizedBox(height: kPadding * 3),
                // <------------------------  Address ------------------------>
                GlobalTextField(
                  autofillHints: const [
                    AutofillHints.name,
                  ],
                  controller: phoneController,
                  fieldTitle: "Address",
                  hintText: "Enter a specific address",
                  maxLine: 1,
                  isFilled: true,
                  validator: (s) => Utils.validateInput(s, minValue: 6),
                ),
                const SizedBox(height: kPadding * 3),
                // <------------------------  Additional notes ------------------------>
                GlobalTextField(
                  autofillHints: const [
                    AutofillHints.name,
                  ],
                  controller: phoneController,
                  fieldTitle: "Additional notes",
                  hintText: "Write notes",
                  maxLine: 4,
                  isFilled: true,
                  validator: (s) => Utils.validateInput(s, minValue: 6),
                ),
                const SizedBox(height: kPadding * 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
