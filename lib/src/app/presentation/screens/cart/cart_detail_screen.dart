import 'package:app/src/app/presentation/components/global_text_field.dart';
import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/cart/order_details_screen.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:app/src/app/presentation/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CartDetailScreen extends StatefulWidget {
  const CartDetailScreen({super.key});

  @override
  State<CartDetailScreen> createState() => _CartDetailScreenState();
}

class _CartDetailScreenState extends State<CartDetailScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kWhiteColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kPadding * 2.5, vertical: kPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: size.height * 0.05,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: "Provisional: ",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: kBlackColor),
                      children: [
                        TextSpan(
                          text: "429.000 đ",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: kRedColor),
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "(1 product)",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: kBlackColor,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: (){

                RouteNavigator.route(context, OrderDetailScreen());
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: kPadding * 3, vertical: kPadding),
                decoration: BoxDecoration(
                    color: kRedColor,
                    borderRadius: BorderRadius.circular(kRadius)),
                child: const Text(
                  "Order",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: kWhiteColor,
                  ),
                ),
              ),
            )
          ],
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
                        "Pay",
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
                // <------------------------  PRODUCTS ------------------------>
                Column(
                  children: List.generate(
                    2,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: kPadding),
                      child: Container(
                        decoration: BoxDecoration(
                            color: kContainerColor,
                            borderRadius: BorderRadius.circular(kRadius)),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(kPadding * 1.5),
                              child: Row(
                                children: [
                                  Image.network(
                                    "https://www.figma.com/file/CGylJZPtafCq47WcU4Vdla/image/d6e2136dfa7ab7da5cadfa187151c1a4ccb1a4d3",
                                    fit: BoxFit.cover,
                                    height: size.height * 0.07,
                                  ),
                                  const SizedBox(width: kPadding),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Black Chair",
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: kBlackColor,
                                        ),
                                      ),
                                      SizedBox(height: kPadding),
                                      Text(
                                        "2.500.000đ",
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w600,
                                          color: kOrangeColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: kPadding * 2),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: kPadding),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      kRadius),
                                              border: Border.all(
                                                  color: kPrimaryColor)),
                                          child: const Text(
                                            "-",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              color: kGreyColor,
                                            ),
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: kPadding),
                                          child: Text(
                                            "1",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              color: kGreyColor,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: kPadding),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      kRadius),
                                              border: Border.all(
                                                  color: kPrimaryColor)),
                                          child: const Text(
                                            "+",
                                            style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700,
                                              color: kGreyColor,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            const Positioned(
                              // top: 5,
                              right: 1,

                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: kPrimaryColor,
                                child: Icon(
                                  Icons.clear,
                                  color: kWhiteColor,
                                  size: 15,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: kPadding * 3),
                // <------------------------  PASSWORD ------------------------>
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
