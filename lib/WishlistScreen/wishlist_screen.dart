import 'package:e_commerce_project/ProfileScreen/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

part 'widgets/line_widget.dart';
part 'widgets/card_wishlist.dart';

class WishlistScreenPage extends StatelessWidget {
  const WishlistScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Wishlist',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: const Color(0xff171714),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              iconSize: 20,
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartShopping,
                color: Color(0xff171714),
              ),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardWishlistWidget(
                imageWishlist: 'assets/images/jacket2.png',
                titleWishlist1: 'Los Angeles Lakers',
                titleWishlist2: 'Hoodie Purple',
                priceWishlist: '\$ 85.00',
              ),
              const LineWidget(),
              CardWishlistWidget(
                imageWishlist: 'assets/images/shoes3.png',
                titleWishlist1: 'Puma Hoops x Cheetos',
                titleWishlist2: 'Scoot Zeros Basketball',
                priceWishlist: '\$ 125.99',
              ),
              const LineWidget(),
              CardWishlistWidget(
                imageWishlist: 'assets/images/shirt4.png',
                titleWishlist1: 'Chicago Bulls x NBA',
                titleWishlist2: 'Shirt Black',
                priceWishlist: '\$ 70.00',
              ),
              const LineWidget(),
              CardWishlistWidget(
                imageWishlist: 'assets/images/cap2.png',
                titleWishlist1: 'Cap New Era Boston',
                titleWishlist2: 'Celtics Basketball',
                priceWishlist: '\$ 78.99',
              ),
              const LineWidget(),
              CardWishlistWidget(
                imageWishlist: 'assets/images/shoes2.png',
                titleWishlist1: 'Puma x LaFrance Melo',
                titleWishlist2: 'MB.3 Basketball',
                priceWishlist: '\$ 78.99',
              ),
              const LineWidget(),
            ],
          ),
        ),
      ),
    );
  }
}

