import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/news/news_detail_screen.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
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
                      padding: EdgeInsets.only(left: kPadding/2),
                      child: Text(
                        "Notification",
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kPadding * 2.5),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const SizedBox(height: kPadding * 3),
            // <------------------------  NOTIFICATIONS ------------------------>
            Column(
              children: List.generate(
                  3,
                  (index) => GestureDetector(
                        onTap: () {
                          RouteNavigator.route(context, NewsDetailScreen());
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: kPadding ),
                          child: Container(
                            padding: const EdgeInsets.all(kPadding*2),
                            decoration: BoxDecoration(color: kContainerColor, borderRadius: BorderRadius.circular(kRadius*2)),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(kRadius),
                                  child: Image.network(
                                    "https://s3-alpha-sig.figma.com/img/46fd/9290/6c677c1ead2c3a3aed4f6e7e20ca4f03?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=njoUI1KbLzMBg5T5q0zIkE8CBobSt~B8SHnaeGiznmZhKoKibBuhWOc3tYq9A2H2oXJ7W5ht00UDOpbD-2AGXuGo3ZqBFk0Z2JVSYj5oSYJjaoLNFa5iKo6FFBZSTPr2PK799AxWOShyY0mZ0EGf36dO6mBcXFRKx~XdBzcQGZRYQKd4WqTrCzAtaDnDaoL~7YPv-remMDwjlv0k5P7JmQPl4w4VXclwvsEUgCt7uZZEF0uyt268F-ONDD8Q6lqcNn4JeTLw1fjjl8JT5ux9YCiPUGzQCUXJx4OlgB9MrdRWbAW3fzgbNj6h3kq9RjkUy2EoFIP7dl1KVr7jXxMDMA__",
                                    width: size.width * 0.1,
                                    height: size.height * 0.03,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(
                                  width: kPadding * 2,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Order placed successfully",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: kBlackColor,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    ],
                                ),
                              ],
                            ),
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
