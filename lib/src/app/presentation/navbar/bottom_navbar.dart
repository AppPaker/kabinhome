import 'package:app/src/app/presentation/screens/categories/categories_screen.dart';
import 'package:app/src/app/presentation/screens/home/home_screen.dart';
import 'package:app/src/app/presentation/screens/news/news_screen.dart';
import 'package:app/src/app/presentation/screens/profile/profile_screen.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

// ignore: must_be_immutable
class BottomNavBar extends StatefulWidget {
  int selectedTab = 0;
  BottomNavBar({
    Key? key,
    required this.selectedTab,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SalomonBottomBar(
          // backgroundColor: kWhiteColor,
          // selectedItemColor: kWhiteColor,
          // unselectedItemColor: kWhiteColor,
          currentIndex: widget.selectedTab,
          selectedColorOpacity: 1,
          onTap: (position) => setState(() => widget.selectedTab = position),
          items: [
            SalomonBottomBarItem(
              // icon: Icon(
              //     widget.selectedTab == 0
              //         ? CupertinoIcons.house_fill
              //         : CupertinoIcons.house,
              //     color: widget.selectedTab == 0 ? kWhiteColor : kQuarterColor,
              //     size: 20),
              icon: SvgPicture.asset(
                Assets.svg.homeSVG,
                color: widget.selectedTab == 0 ? kWhiteColor : kQuarterColor,
                height: 25,
              ),
              title: const Text(
                "Home",
                style: TextStyle(color: kWhiteColor),
              ),
              selectedColor: kPrimaryColor,
              unselectedColor: kQuarterColor,
            ),

            /// Clips
            SalomonBottomBarItem(
              // icon: Icon(
              //     widget.selectedTab == 1
              //         ? CupertinoIcons.play_circle_fill
              //         : CupertinoIcons.play_circle,
              //     color: widget.selectedTab == 1 ? kWhiteColor : kQuarterColor,
              //     size: 20),
              icon: SvgPicture.asset(
                Assets.svg.categoriesSVG,
                color: widget.selectedTab == 1 ? kWhiteColor : kQuarterColor,
                height: 25,
              ),
              title: const Text(
                "Categories",
                style: TextStyle(color: kWhiteColor),
              ),
              selectedColor: kPrimaryColor,
              unselectedColor: kQuarterColor,
            ),

            /// Compass
            SalomonBottomBarItem(
              // icon: Icon(
              //     widget.selectedTab == 2
              //         ? CupertinoIcons.compass_fill
              //         : CupertinoIcons.compass,
              //     color: widget.selectedTab == 2 ? kWhiteColor : kQuarterColor,
              //     size: 20),
              icon: SvgPicture.asset(
                Assets.svg.cartSVG,
                color: widget.selectedTab == 2 ? kWhiteColor : kQuarterColor,
                height: 25,
              ),
              title: const Text(
                "News",
                style: TextStyle(color: kWhiteColor),
              ),
              selectedColor: kPrimaryColor,
              unselectedColor: kQuarterColor,
            ),

            /// profile
            SalomonBottomBarItem(
              // icon: Icon(
              //     widget.selectedTab == 3
              //         ? CupertinoIcons.person_alt_circle_fill
              //         : CupertinoIcons.person_alt_circle,
              //     color: widget.selectedTab == 3 ? kWhiteColor : kQuarterColor,
              //     size: 20),
              icon: SvgPicture.asset(
                Assets.svg.profileSVG,
                color: widget.selectedTab == 3 ? kWhiteColor : kQuarterColor,
                height: 25,
              ),
              title: const Text(
                "Profile",
                style: TextStyle(color: kWhiteColor),
              ),
              selectedColor: kPrimaryColor,
              unselectedColor: kQuarterColor,
            ),
          ],
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: widget.selectedTab,
      children: const [
        HomeScreen(),
        CategoriesScreen(),
        NewsScreen(),
        ProfileScreen()
      ],
    );
  }
}
