import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/news/news_detail_screen.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
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
                    const Padding(
                      padding: EdgeInsets.only(left: kPadding),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(height: kPadding * 3),
            // <------------------------  CATGORIES ------------------------>
            Column(
              children: List.generate(
                  3,
                  (index) => GestureDetector(
                        onTap: () {
                          RouteNavigator.route(context, NewsDetailScreen());
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kPadding * 2),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(kRadius),
                                child: Image.network(
                                  "https://s3-alpha-sig.figma.com/img/220d/f86b/fe5a85b07200f5e5dcb98ccba2e66850?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GK~m1th05-9LdgcsUx8vrWhNXc7aGDGf5fmwFsi7K398y3HHWGvPz7E07eOZ9Qi-TNiJf-7va4B~gnRRwdWI9aX9O9ZB~ueRc4bQvI8AiGxwdbX7d1mnuVuA5UTUpt2oD2em1ZXIxjpkwzZrh6rhIv4H66F5HhfD1LFyq6f9ZIrPPP8OQnCa0DAJd12jkGDV1OQQmFfKmVH7TqvqapL9gg4bAMPstUjKxZy5Hk4lQmYOFUas1j093HHsFWvFl7pKpdWL-2kSopkM-bSHJHVP78yCj-NNxpbogmGFV8idiASmUqNChQr9lu26IMLaj~W7rWJp~dTBcJ~4vKvCFyVP9A__",
                                  width: size.width * 0.2,
                                  height: size.height * 0.1,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(
                                width: kPadding * 2,
                              ),
                              const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Lorem ipsum dolor sit",
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: kBlackColor,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "consectetur adipiscing elit, sed do",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: kBlackColor,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(height: kPadding),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
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
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      )),
            )
          ]),
        ),
      ),
    );
  }
}
