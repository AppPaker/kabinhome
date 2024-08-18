import 'package:app/src/app/presentation/components/app_logo_widget.dart';
import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/notifications/notifications_screen.dart';
import 'package:app/src/app/presentation/screens/product/product_details_screen.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> tabsList = ["Most Populer", "Newst", "Special", "Lamp", "Sofa"];
  List newArrival = [
    {
      "title": "Wooden Chair",
      "image":
          "https://s3-alpha-sig.figma.com/img/71d3/b23c/e49d76a85e959f6657c178ae93956cf1?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fws8BfPhZkYvVoMVTWHHNFAYxw7bqFWoUwsxivYbpwhGQDrr4nG5-qWh0PKc58vVI0~jodwpbL2yYwTJR~2EPhkjr8cY1h237HDSBrO4lTq~RyASuox3eRWU5oG4kIMThVDOSu23NIjcFmaMOPAGw21kFzyUBchQlvcPUVRAd-lfsy5gZKxp37wASLcE8PIr-H7AZm1p8vu0C5w5e57WNiUkKBrSkRLCPc5QNsxHhR5GAGvBxe-wKy-HCax9ACs6zyO7NInbTOoCcAT9774O5jSwYdFCYZqzLIILUqexvDcrdYKFXSeVKkMx2OyoBS2KO3qs7NvwmYcRI0XnpFd7sw__",
      "rating": "4.5 (Rating)",
      "price": "2.200.000đ",
    },
    {
      "title": "Black Chair",
      "image":
          "https://www.figma.com/file/CGylJZPtafCq47WcU4Vdla/image/d6e2136dfa7ab7da5cadfa187151c1a4ccb1a4d3",
      "rating": "4.2 (Rating)",
      "price": "3.200.000đ",
    },
    {
      "title": "Wooden Chair",
      "image":
          "https://s3-alpha-sig.figma.com/img/71d3/b23c/e49d76a85e959f6657c178ae93956cf1?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fws8BfPhZkYvVoMVTWHHNFAYxw7bqFWoUwsxivYbpwhGQDrr4nG5-qWh0PKc58vVI0~jodwpbL2yYwTJR~2EPhkjr8cY1h237HDSBrO4lTq~RyASuox3eRWU5oG4kIMThVDOSu23NIjcFmaMOPAGw21kFzyUBchQlvcPUVRAd-lfsy5gZKxp37wASLcE8PIr-H7AZm1p8vu0C5w5e57WNiUkKBrSkRLCPc5QNsxHhR5GAGvBxe-wKy-HCax9ACs6zyO7NInbTOoCcAT9774O5jSwYdFCYZqzLIILUqexvDcrdYKFXSeVKkMx2OyoBS2KO3qs7NvwmYcRI0XnpFd7sw__",
      "rating": "4.5 (Rating)",
      "price": "2.200.000đ",
    },
    {
      "title": "Black Chair",
      "image":
          "https://www.figma.com/file/CGylJZPtafCq47WcU4Vdla/image/d6e2136dfa7ab7da5cadfa187151c1a4ccb1a4d3",
      "rating": "4.2 (Rating)",
      "price": "3.200.000đ",
    },
  ];
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: kWhiteColor,
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
                      Padding(
                          padding: const EdgeInsets.only(left: kPadding),
                          child: AppLogoWidget(height: size.height / 100 * 3)),
                      const Spacer(),
                      Padding(
                          padding: const EdgeInsets.all(kPadding),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  RouteNavigator.route(context, const NotificationsScreen());
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(kPadding),
                                  decoration: const BoxDecoration(
                                      color: kContainerColor,
                                      shape: BoxShape.circle),
                                  child: SvgPicture.asset(
                                    Assets.svg.notificationSVG,
                                    height: size.height / 100 * 2.2,
                                  ),
                                ),
                              ),
                              const SizedBox(width: kPadding),
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
              padding: const EdgeInsets.symmetric(horizontal: kPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ---------------  CATEGORIES ---------------
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(kPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kRadius * 3),
                            color: kContainerColor),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.sell_outlined,
                              color: kBlackColor,
                              size: 20,
                            ),
                            SizedBox(width: kPadding),
                            Text(
                              "Browse",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: kBlackColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: kPadding,
                      ),
                      Container(
                        padding: const EdgeInsets.all(kPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kRadius * 3),
                            color: kContainerColor),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.favorite_border,
                              color: kBlackColor,
                              size: 20,
                            ),
                            SizedBox(width: kPadding),
                            Text(
                              "Favorite product",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: kBlackColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: kPadding,
                      ),
                      Container(
                        padding: const EdgeInsets.all(kPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(kRadius * 3),
                            color: kContainerColor),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.widgets_outlined,
                              color: kBlackColor,
                              size: 20,
                            ),
                            SizedBox(width: kPadding),
                            Text(
                              "Categories",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: kBlackColor,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: kPadding * 2),
                  const Text(
                    "Let's get to know you better",
                    style: TextStyle(
                        fontSize: 24,
                        color: kBlackColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: kPadding * 2),
                  // ---------------  TABS ---------------
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(tabsList.length, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedTab = index;
                            });
                          },
                          child: Container(
                            padding: const EdgeInsets.all(kPadding * 2),
                            decoration: BoxDecoration(
                                color: selectedTab == index
                                    ? kPrimaryColor
                                    : null),
                            child: Text(
                              tabsList[index],
                              style: TextStyle(
                                  fontSize: 12,
                                  color: selectedTab == index
                                      ? kWhiteColor
                                      : kGreyColor,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: kPadding * 3),
                  const Text(
                    "New Arrival",
                    style: TextStyle(
                        fontSize: 15,
                        color: kBlackColor,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: kPadding * 3),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children: List.generate(newArrival.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: kPadding * 2),
                        child: GestureDetector(
                          onTap: () {
                            RouteNavigator.route(
                                context, const ProductDetailsScreen());
                          },
                          child: Container(
                            width: size.width * 0.45,
                            height: size.height * 0.38,
                            decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 0,
                                  child: Container(
                                    width: size.width * 0.45,
                                    height: size.height * 0.33,
                                    decoration: BoxDecoration(
                                      color: kContainerColor,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                  ),
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(kRadius),
                                  child: Image.network(
                                    newArrival[index]["image"],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: kPadding,
                                      vertical: kPadding * 2),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        newArrival[index]["title"],
                                        style: const TextStyle(
                                            fontSize: 15,
                                            color: kBlackColor,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(height: kPadding),
                                      Text(
                                        newArrival[index]["rating"],
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: kGreyColor,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(height: kPadding),
                                      Text(
                                        newArrival[index]["price"],
                                        style: const TextStyle(
                                            fontSize: 12,
                                            color: kOrangeColor,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    })),
                  ),

                  const SizedBox(height: kPadding * 3),

                  const Text(
                    "Service",
                    style: TextStyle(
                        fontSize: 15,
                        color: kBlackColor,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: kPadding * 3),
                  // ---------------  Services ---------------
                  Column(
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: kPadding),
                        child: Container(
                          padding: const EdgeInsets.all(kPadding * 2),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(kRadius),
                              color: kContainerColor),
                          child: const Row(
                            children: [
                              CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(
                                    "https://s3-alpha-sig.figma.com/img/cb04/70ee/fd4aacc5c4734b382f4a5a72afa18935?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=HCeHb7CJYlB-oxPHABGn-Qiyo6Nq04Q~XIfhb1aXxm2t8ORcVSajWvRLGYCWFxsE5h3I7y8s88cVuF7z3G0JgPN7lZ929Z~dRLwfkP9OgrQJDE3W8UhSyF4vxY1YFiM4sPD8iEdH4SzcWZ79DsM7bIg83wI2nw-cGkZQ7kOs2JXK2MqRe5MbTjdLUd6YxcdpPLoJdETAmz3N~J0lCqoOQaWNBC3a0jxK-cN~dHIASX-Nis-wU8fOXOBAsKTa696x8LCQH-gw4fH8Ge7e8DrnLd2rgMXkpHrHieyr40GalDbznG1hZaje2qyM1vt0BboOBvFi84DxBPwaYDoV9U9lEQ__"),
                              ),
                              SizedBox(width: kPadding * 2),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Living Room",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: kBlackColor,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "Chair",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: kGreyColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Text(
                                "38 Item",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: kBlackColor,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final double rating;
  final String price;

  const ProductCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.rating,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          const BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: -16,
            left: 16,
            right: 16,
            child: Image.network(
              "https://s3-alpha-sig.figma.com/img/71d3/b23c/e49d76a85e959f6657c178ae93956cf1?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fws8BfPhZkYvVoMVTWHHNFAYxw7bqFWoUwsxivYbpwhGQDrr4nG5-qWh0PKc58vVI0~jodwpbL2yYwTJR~2EPhkjr8cY1h237HDSBrO4lTq~RyASuox3eRWU5oG4kIMThVDOSu23NIjcFmaMOPAGw21kFzyUBchQlvcPUVRAd-lfsy5gZKxp37wASLcE8PIr-H7AZm1p8vu0C5w5e57WNiUkKBrSkRLCPc5QNsxHhR5GAGvBxe-wKy-HCax9ACs6zyO7NInbTOoCcAT9774O5jSwYdFCYZqzLIILUqexvDcrdYKFXSeVKkMx2OyoBS2KO3qs7NvwmYcRI0XnpFd7sw__",
              height: 120,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 56,
            left: 16,
            right: 16,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 36,
            left: 16,
            right: 16,
            child: Row(
              children: [
                Text(
                  '$rating ',
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 14,
                ),
                const Text(
                  ' (Rating)',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16,
            left: 16,
            right: 16,
            child: Text(
              price,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
