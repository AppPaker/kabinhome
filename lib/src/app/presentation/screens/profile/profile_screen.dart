import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/profile/tabs/about_us_screen.dart';
import 'package:app/src/app/presentation/screens/profile/tabs/address_screen.dart';
import 'package:app/src/app/presentation/screens/profile/tabs/change_password_screen.dart';
import 'package:app/src/app/presentation/screens/profile/tabs/personal_info_screen.dart';
import 'package:app/src/app/presentation/screens/profile/tabs/policy_terms_screen.dart';
import 'package:app/src/app/presentation/screens/profile/widgets/profile_tile.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 16),

                //Account text
                const Text(
                  "Account",
                  textScaler: TextScaler.linear(1.2),
                  style: TextStyle(
                      color: kBlackColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
                const SizedBox(height: 15),

                const Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          "https://www.figma.com/file/CGylJZPtafCq47WcU4Vdla/image/fe179bdb3ec1aa40d3bce6c42943ebbb3a6b6ac4"),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Dương",
                          style: TextStyle(
                              color: kBlackColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "SILVER - 0 point",
                          style: TextStyle(
                              color: kBlackColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ProfileListTile(
                  onTap: () {
                    RouteNavigator.route(context, const AddressScreen());

                  },
                  svg: Assets.svg.addressSVG,
                  title: "Address",
                ),
                const SizedBox(height: 15),
                ProfileListTile(
                  onTap: () {
                    RouteNavigator.route(context, const PersonalInfoScreen());

                  },
                  svg: Assets.svg.accountSVG,
                  title: "Account",
                ),
                const SizedBox(height: 15),
                ProfileListTile(
                  onTap: () {},
                  svg: Assets.svg.orderSVG,
                  title: "Order",
                  isExpanded: true,
                ),

                const SizedBox(height: 15),
                ProfileListTile(
                  onTap: () {
                    RouteNavigator.route(context, const AboutUsScreen());

                  },
                  svg: Assets.svg.aboutUsSVG,
                  title: "About us",
                ),
                const SizedBox(height: 15),
                ProfileListTile(
                  onTap: () {
                    RouteNavigator.route(context, const PolicyTermsScreen());

                  },
                  svg: Assets.svg.policySVG,
                  title: "Policy terms",
                ),
                const SizedBox(height: 15),
                ProfileListTile(
                  onTap: () {},
                  svg: Assets.svg.questionsSVG,
                  title: "Frequently asked questions",
                ),
                const SizedBox(height: 15),
                ProfileListTile(
                  onTap: () {
                    RouteNavigator.route(context, const ChangePasswordScreen());
                  },
                  svg: Assets.svg.changePasswordSVG,
                  title: "Change Password",
                ),
                const SizedBox(height: 15),
                ProfileListTile(
                  onTap: () {},
                  svg: Assets.svg.logoutSVG,
                  title: "Log out",
                ),
                // Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     GestureDetector(
                //       onTap: () {
                //         // const ProfileDetailScreen().push(context);
                //       },
                //       child: Container(
                //         width: size.width,
                //         padding: const EdgeInsets.all(13),
                //         decoration: BoxDecoration(
                //             color: kTileColor,
                //             borderRadius: BorderRadius.circular(10)),
                //         child: Row(
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           mainAxisAlignment: MainAxisAlignment.start,
                //           children: [
                //             ClipRRect(
                //               borderRadius: BorderRadius.circular(10),
                //               child: Image(
                //                   height: 40,
                //                   width: 40,
                //                   fit: BoxFit.fill,
                //                   image: AssetImage(Assets.images.appLogo)),
                //             ),
                //             const SizedBox(
                //               height: 20,
                //             ),
                //             Column(
                //               crossAxisAlignment: CrossAxisAlignment.start,
                //               mainAxisAlignment: MainAxisAlignment.start,
                //               children: [
                //                 SizedBox(
                //                   width: size.width * 0.5,
                //                   child: Text(
                //                     "MY CHANNEL",
                //                     maxLines: 1,
                //                     overflow: TextOverflow.ellipsis,
                //                     style: Theme.of(context)
                //                         .textTheme
                //                         .titleSmall!
                //                         .copyWith(
                //                             color: kLightGreyColor,
                //                             fontWeight: FontWeight.w300),
                //                   ),
                //                 ),
                //                 const SizedBox(
                //                   height: 10,
                //                 ),
                //                 SizedBox(
                //                   width: size.width * 0.5,
                //                   child: Text(
                //                     "Hassaan Ali",
                //                     maxLines: 1,
                //                     overflow: TextOverflow.ellipsis,
                //                     style: Theme.of(context)
                //                         .textTheme
                //                         .titleMedium!
                //                         .copyWith(
                //                             color: kWhiteColor,
                //                             fontWeight: FontWeight.w600),
                //                   ),
                //                 ),
                //               ],
                //             ),
                //             const Spacer(),
                //             const Icon(
                //               Icons.arrow_forward_ios,
                //               color: kLightGreyColor,
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),

                //     const SizedBox(
                //       height: 25,
                //     ),

                //     //subscription and blocked channel
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         ProfileTile(
                //           onTap: () {
                //             // const SubscribeScreen().push(context);

                //             // showModalBottomSheet(
                //             //   backgroundColor: kBlackColor,
                //             //     context: context,
                //             //     isScrollControlled: true,
                //             //     showDragHandle: true,
                //             //     enableDrag: true,
                //             //     useRootNavigator: false,
                //             //     builder: (context) {
                //             //       return subscriptionSheet(context) ;
                //             //     }
                //             // ) ;
                //           },
                //           icon: Assets.images.appLogo,
                //           title: "Subscription",
                //           bottomStraightBorder: true,
                //           withBorder: true,
                //         ),
                //         ProfileTile(
                //             onTap: () {},
                //             icon: Assets.images.appLogo,
                //             title: "Blocked Channels",
                //             topStraightBorder: true),
                //       ],
                //     ),

                //     const SizedBox(
                //       height: 25,
                //     ),

                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.start,
                //       children: [
                //         ProfileTile(
                //           onTap: () {
                //             // const SettingsTabView().push(context);
                //           },
                //           icon: Assets.images.appLogo,
                //           title: "Settings",
                //           bottomStraightBorder: true,
                //           withBorder: true,
                //         ),
                //         ProfileTile(
                //           onTap: () {
                //             // const AppearanceScreen().push(context);
                //           },
                //           icon: Assets.images.appLogo,
                //           title: "Appearance",
                //           withBorder: true,
                //         ),
                //         ProfileTile(
                //           onTap: () {
                //             // const LanguageScreen().push(context);
                //           },
                //           icon: Assets.images.appLogo,
                //           title: "Language",
                //           withBorder: true,
                //         ),
                //         ProfileTile(
                //           onTap: () {
                //             // const MoreScreen().push(context);
                //           },
                //           icon: Assets.images.appLogo,
                //           title: "More",
                //           topStraightBorder: true,
                //         ),
                //       ],
                //     ),

                //     const SizedBox(
                //       height: 25,
                //     ),

                //     ProfileTile(
                //       onTap: () async {
                //         final SharedPreferences prefs =
                //             await SharedPreferences.getInstance();

                //         // < ---------------------  REMOVING STORED PREFS --------------------- >

                //         prefs.remove('userFullName');
                //         prefs.remove('username');
                //         prefs.remove('userGuidId');
                //         prefs.remove('role');
                //         prefs.remove('token');
                //         RouteNavigator.replacementroute(
                //             context, const SplashScreen());
                //       },
                //       icon: Assets.images.appLogo,
                //       title: "Log Out",
                //       primaryColor: kDarkOrangeColor,
                //       circularBorder: true,
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

/*  Widget subscriptionSheet(BuildContext context) {

    var width = AppConstants.mediaWidth(context) ;
    var height = AppConstants.mediaHeight(context) ;

    return DraggableScrollableSheet(
        initialChildSize: 0.5,
        maxChildSize: 0.9,
        minChildSize: 0.5,
        builder: (context, controller) {
          return SingleChildScrollView(
            controller: controller,
            child: Container(
              width: width,
              padding: 14.allEdge,
              decoration: const BoxDecoration(
                //color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12)
                )
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                // controller: controller,
                children: [


                  Text(
                      "COMPLETE PURCHASE",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: kWhiteColor
                      ),
                  ),

                  30.sh,

                  SizedBox(
                    width: width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image(
                                height: 50,
                                width: 50,
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  Assets.images.purchasePNG
                                )
                            ),
                          ),
                        ),

                        10.sh,

                        Text(
                          'Subscription to "Fazekayson"',
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: kWhiteColor
                          ),
                        ),

                        20.sh,

                        Text(
                          "Recurring charge, starting today.",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: kDarkGreyColor
                          ),
                        ),

                        5.sh,

                        Text(
                          "Cancel anytime on your Subscriptions page.",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: kDarkGreyColor
                          ),
                        ),

                        10.sh,

                        Text(
                          "Total including taxes",
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: kWhiteColor
                          ),
                        ),

                        10.sh,

                        Text(
                          "\$4.99/month",
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: kWhiteColor
                          ),
                        ),

                        const Divider(
                          height: 50,
                          thickness: 0.5,
                          color: kWhiteColor,
                        ),

                        Text(
                          "Select payment gateway",
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: kWhiteColor,
                            fontWeight: FontWeight.w300
                          ),
                        ),

                        10.sh,


                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [

                            paymentCardWidget(
                                image: Assets.images.creditCardPNG,
                                title: 'Credit/Debit'
                            ),

                            paymentCardWidget(
                                image: Assets.images.madaPayPNG,
                                title: 'Madapay'
                            ),

                            paymentCardWidget(
                                image: Assets.images.stcPayPNG,
                                title: 'Stcpay'
                            ),

                            paymentCardWidget(
                                image: Assets.images.applePayPNG,
                                title: 'Apple pay',
                                zeroPadding: true
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),
          ) ;
        }
    ) ;

  }*/
}
