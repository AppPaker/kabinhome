import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
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
                        "News",
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
                                Assets.svg.searchSVG,
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
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Lorem ipsum dolor sit",
                  style: TextStyle(
                      fontSize: 15,
                      color: kBlackColor,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: kPadding),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: kGreyColor,
                        ),
                        SizedBox(width: kPadding),
                        Text(
                          "16th May",
                          style: TextStyle(
                              fontSize: 12,
                              color: kGreyColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(width: kPadding * 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.timer_outlined,
                          color: kGreyColor,
                        ),
                        SizedBox(width: kPadding),
                        Text(
                          "09 : 32 pm",
                          style: TextStyle(
                              fontSize: 12,
                              color: kGreyColor,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: kPadding),
                Image.network(
                  "https://s3-alpha-sig.figma.com/img/1b53/ba0f/0ac5fe25db3d6b5be0ba62a354a19be6?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=JZTbm4D1TO5Y8V1rAqfE454P1GLlW16ce-zFxLNL4xbjpE3TSHI518~3z0vw6u5kqmof7QL1IGmi2vrGhQ9tGEX84B-fHzmnh6QteRWdnmR8fIYtCYGIzEga3EAPwlDXA2QT52M-PMl0Exjaf-cItAo0fO3GpaF0~9Dbr-wUZq6zbNq-FBnrOw9FSiwjDDF1bwJjUtCNwkwcrxl-7A6WFpzUycOe71RrF0izDMUd5yQcWHf3caHtCoHXuw6VJEforjaA9gYLRZ~197k94pwkWnio76uDIdldae0h9XOKzIDR20Qo6PreOhVgpeYhBNyeupxob7vtYgMkkOYe9~THQw__",
                  height: size.height * 0.3,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: kPadding),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    color: kBlackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: kPadding),
                Image.network(
                  "https://s3-alpha-sig.figma.com/img/87cd/3071/8113a3d3d9d03467842d66a27a9038c5?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=QFSnwrKwYei9Sv2v6kaTxw2QIe4maJpFrViVV6f6oxNB9A7v4oDhUYFDNl6S4VTAEU7eyya1zr01qi5X06dqkldgPz5fVeRqwjFljKZlD93UyjbE6Ook9CHh3H0JzPh9XORWUKHtS7yL8ag-AoR8DcQM-O5jC~mqpPS5gfJ9TqTMojx7W2xzpYyCz2krLuiGrHZvXvmd0cRGHq3~~vRC155nfl~0-DB9XPISm~bF9Mbb2VdqvEZnMu9gMZqUe1oC6d843TbaZiqIdkGkFHGX4HwrQfHCqDPNea4ks0jHic-klZCaIWAmrDor1aly~rmNLlQu~CELAdmFXirZ~kTkgw__",
                  height: size.height * 0.3,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: kPadding),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.  Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, Quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    color: kBlackColor,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
