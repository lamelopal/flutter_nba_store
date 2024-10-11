import 'package:e_commerce_project/ProfileScreen/add_to_cart.dart';
import 'package:e_commerce_project/ProfileScreen/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

part 'widgets/card_shop_widget.dart';

part 'widgets/upper_section_widget.dart';

part 'widgets/promotion_card_widget.dart';

part 'widgets/category_widget.dart';

part 'widgets/costum_tab_widget.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UpperWidget(),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PromotionCard(
                        imageCard: 'assets/images/jerseymem.png',
                        title1: 'Get The Jersey',
                        title2: 'Memphis Now',
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      PromotionCard(
                        imageCard: 'assets/images/jerseyrap.png',
                        title1: 'Get The Jersey',
                        title2: 'Raptors Now',
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const CategoryWidget(),
                const SizedBox(
                  height: 5,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TabBarKwWidget(
                        imageSell: 'assets/images/shirt1.png',
                        titleSell: 'Shirt',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TabBarKwWidget(
                        imageSell: 'assets/images/jacket1.png',
                        titleSell: 'jacket',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TabBarKwWidget(
                        imageSell: 'assets/images/cap1.png',
                        titleSell: 'Cap',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TabBarKwWidget(
                        imageSell: 'assets/images/shoes1.png',
                        titleSell: 'Shoes',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TabBarKwWidget(
                        imageSell: 'assets/images/jer1.png',
                        titleSell: 'Jersey',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TabBarKwWidget(
                        imageSell: 'assets/images/sock1.png',
                        titleSell: 'Sock',
                        onTap: () {},
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      TabBarKwWidget(
                        imageSell: 'assets/images/balll.png',
                        titleSell: 'Basketball',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'NEW ITEMS',
                  style: GoogleFonts.concertOne(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xffED7549)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardShopWidget(
                      productImage: 'assets/images/jerseryhornets.png',
                      productName: 'Hornets Jersey',
                      productPrice: '\$ 89.00',
                    ),
                    CardShopWidget(
                      productImage: 'assets/images/jerseywolf.png',
                      productName: 'Wolves Jersey',
                      productPrice: '\$ 79.99',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CardShopWidget(
                      productImage: 'assets/images/sock.png',
                      productName: 'Melo Sock',
                      productPrice: '\$ 21.99',
                    ),
                    CardShopWidget(
                      productImage: 'assets/images/mb4.png',
                      productName: 'Puma MB 4',
                      productPrice: '\$ 134.99',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
