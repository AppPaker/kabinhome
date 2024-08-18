import 'package:app/src/app/presentation/navbar/bottom_navbar.dart';
import 'package:app/src/app/presentation/routes/routes_navigator.dart';
import 'package:app/src/app/presentation/theme/color_theme.dart';
import 'package:app/src/app/presentation/utils/consts.dart';
import 'package:flutter/material.dart';

class OrderDetailScreen extends StatefulWidget {
  const OrderDetailScreen({super.key});

  @override
  State<OrderDetailScreen> createState() => _OrderDetailScreenState();
}

class _OrderDetailScreenState extends State<OrderDetailScreen> {
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: kWhiteColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kPadding * 2.5, vertical: kPadding),
        child: SizedBox(
          height: size.height * 0.18,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  RouteNavigator.replacementroute(context, BottomNavBar(selectedTab: 0));
                },
                child: Container(
                  width: size.width,
                  padding: const EdgeInsets.symmetric(
                      horizontal: kPadding * 3, vertical: kPadding * 2),
                  decoration: BoxDecoration(
                      color: kRedColor,
                      borderRadius: BorderRadius.circular(kRadius)),
                  child: const Center(
                    child: Text(
                      "Done",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: kPadding,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(kPadding),
                    child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/30a0/4fcb/545751d14257476660684faf84e74a41?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=GwUNrLFdyTBOaPXsXimZbsDDHEEvaOR9dgl789s3wa8828OLH6zpIZSO5CL9jaD-YeZQvjrwyq1G3NgzhFRbwIa37mX5OXN9jPoTP04~LxyLoSuY8v1MjierLQS298JcA5vcCzSglbZ40SmmnFwh6wAGBOivzAgpouUxJAlKbyylVRakvf3HZAps7LSFIfJRBtpgDQWOPyDgd~yxTXaGma2f0MFfxKtIwwfsNI8gkIhTqB88LXMltgWqbGpPbDTA30xbupDFiiyFnDUH2mmL5UbWz0AwDeTrSBRgiIC~IPSP~85vNnGkHnmGpsZo6kwD~LPmRqhXm3lVOrhHvLoQow__",
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kPadding),
                    child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/32dd/dc4a/4ecec7dfa0cb51138854c4803909680f?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=S-YeMOoG5zQJTX0FtNSDfxbSJHhXuSDoVa5FlRtOingnwQnp2u9cQdh-nk5SmwNTcla-kv61gVfiTiRAmSyfAcZMtPodzzqeM07hj8mV~lGN9OL8BL7jd1PX0liKRQv1pCmoKg9uAZPeXGKG8752~e-K8~ZuqsePJtYDPJnyA2bU1O3TMWOedaBk-fNX5qnm9dCtD9bE4erUI0DSx7cOD6-0mWQP8ti18-X~zROds9t7WUIzHQfIHsYCV~OZ7haLPLChcuWmQbRk3JlhqEwpt5fCiZ8GvLv8VchWGXMUk0p7y9jnIwwyPQSBdK3usKQLKxGN-VBY2DgkyMrXJNUy8w__",
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kPadding),
                    child: Image.network(
                      "https://s3-alpha-sig.figma.com/img/4cf3/bea4/f2b02c319be127a48c4610c31382abd6?Expires=1719187200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=fAij9IVq-mOMAfUdBwo~2TfEcQUYkl4iGsl4GKm8IH9fhnxBp0I-5gbpSIlmYE2pddjO19ql6hDQDBAEMNwB3g3I35Z1Luat516FdshdvKrf7GRTFus5ZDdIuWaMaO127tZ5Iab9qNA7gY9RDhRp2tYYYrF5Yq-66Kj4x64IhXmMiYu~6Ji8RLIatPJTyZpeJYKpKyHIrMCVe0nhqqlGz13QcLd4dTJPlJGri3AAlv-Uvob2j7Vze2go1klAHKs24C6F3FmhytQrHzR7hg66a9mlf8vbZ~TTn0vGeFNzjjKJ9oVDWYGMRl1vUTkKkIpGi-cJdLYd3Hm-7UUVV-FYyA__",
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kPadding),
            ],
          ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: kPadding),
                  child: Container(
                    width: size.width,
                    padding: const EdgeInsets.all(kPadding * 2),
                    decoration: BoxDecoration(
                        color: kContainerColor,
                        borderRadius: BorderRadius.circular(kRadius)),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Bank: Techcombank\nAccount number: 19023272301888\nBeneficiary: Nguyễn Tường A\nTransfer content: AFGHJKRT",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: kBlackColor,
                          ),
                        ),
                        Icon(Icons.copy)
                      ],
                    ),
                  ),
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
