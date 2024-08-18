import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/screens/product/product_details_screen.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/assets.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List categoriesList = [
    {
      "title": "Living room",
      "image":
          "https://s3-alpha-sig.figma.com/img/dfb3/b3c6/43b2d038aef12a8ffc09c287cf5b2376?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=isnteuTPoc83wHzouVsceQFbWC7g-Ktqw0cUrF8eeFduzVUq~lLR2CnDu74fNs5agcqLGx99ELI8I0ow~BDCDnXxasI0fdLINtZAAXFXdNm5XRXtSDc6KKgcIZlGOo0xuTfcRvZ8DE6kDXfSX7Ifp1UKKyAwLTFHpHzfPBlPn3RfWFKv93foobvn1ITGpDycj4t0wnv4Oj5ywmxcyZuyHZ5tuTCc8clrMj71~cg88AO~XhkG2CJyvvhjmjHesg6~cAviZ~mdhAycjpvXxbupGcCCSSMNaWIoRa~utH1Lems2aLqZ2l8jsS5Ltw9F0~~Cdp5xq2JfUeOX1R7QRzXyiA__",
    },
    {
      "title": "Bed room",
      "image":
          "https://s3-alpha-sig.figma.com/img/b00e/4af7/78c16e351f01add9df5097736a2721ef?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=dRGHtTm37SutKsd8FJvaZuZOWjigT5Gt-N9qhyedvhqfGseEwR9dkUMbyMMTqJmp2u7Be-xdeyQ~YAXLyl~ty970AtBLIPRZa2s4RXy5iYQhxFAqblbzyk5Qtg1S4SFshavw2OIYkHzEs9Uu6SdzDfUhXWziHKrprBOk33cGwOvYc7iaH2MF70PykebuOHJdYKaDo4-2NaVyZIN9OJ~vwXQcxWhdElcLlYA3688jVICZyUdeybauaIIrqbIYkBjr18AwQ3rFT485otv5VGAi64~Y2ec661RiRFTFlGwcPB0AlN4sHQeQEm72nk8iTOx0XPik9MWnUqDa8mJny~rUUw__",
    },
    {
      "title": "Table",
      "image":
          "https://s3-alpha-sig.figma.com/img/f036/159e/f5bdea65927f2080bb03dc3de938c376?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=Yoh1vi7dsc1dqMXpCu2GoJ7sjV-NBxQglROYN62BEoOJA1taTVxXBsQLJ5e0cAs7z82vGgXrNNLEsVusTMNMAyU1j~9i2ztv2ahCP~gQKA7lkaYvE-CuWUxHHm7UiV5ybeCz-aBCN-nngtLY-RbMd0XhD0kkm5cJhzoTr6eIXzNmh-stTe4f10DoImlBo0Bywq4Fp~q2Ts7Vm3PENtU73EUhyPDsDooUycU7Tv4XwutmcVrr8XgO~6a0ms9qBqPmdvy0xj8JaqJE5452xnT-O8Fb1uBCFRZXFU3158Kzv4K4Z1LwyaVM-kbC1qxyGLLuW7qDnoNc0HfkeAiR4ViS-g__",
    },
    {
      "title": "Chair",
      "image":
          "https://s3-alpha-sig.figma.com/img/629f/70e6/57d34b10f131f59988b79e97de5152eb?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=KCyzUn5zUMCc8Rz0qUWdS97WTgSx1jTbkbao1g~a-SGYAHlK6y9xS51HVy-cU~7Pf2AEzbnrmwSeNC6yH44hxvFAH7BhU7S1cSSLbnMl7NVBvCKkfBsgu1rbYEDmDT~JgVdgGdY3-Hgl5L1qbQnto92p7nX0Ts2FmAoif6ZjDPWcfX3aVitIxm0fu99T17oLr1p7wEc0ktKrM4yxt-I9DrRKv2LVG0U5nQ6HleNQ1J55PCw9MlT826qez5ybf0mYC~ge1Vy57kWDUHwo~HOfbDWXh0uL9krFAThorPgWQSWtMzc01uwkaDBzjR~RUHJKQbXaCCPZNymBjlbcv7e1lg__",
    },
  ];
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
                      padding: EdgeInsets.only(left: kPadding ),
                      child: Text(
                        "Categories",
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
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(height: kPadding * 3),
              // <------------------------  CATGORIES ------------------------>

              GridView.builder(
                shrinkWrap: true,
                primary: false,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kPadding,
                    mainAxisSpacing: kPadding,
                    mainAxisExtent: 200),
                itemCount: categoriesList.length,
                itemBuilder: (context, index) {
                  final categoriesData = categoriesList[index];
                  return GestureDetector(
                    onTap: () {
                      RouteNavigator.route(
                          context, const ProductDetailsScreen());
                    },
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(kRadius),
                          child: Image.network(
                            categoriesData['image'],
                            width: double.infinity,
                            height: size.height * 0.2,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: kPadding,
                        ),
                        Text(
                          categoriesData['title'],
                          style: const TextStyle(
                              fontSize: 12,
                              color: kBlackColor,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  );
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}
