import 'package:e_commerce_project/ProfileScreen/add_to_cart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int currentIndex = 0;

  Container buildContainer(String name, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
            color: currentIndex == index
                ? const Color(0xff171714)
                : const Color(0xff888782),
            width: 2),
        color: currentIndex == index
            ? const Color(0xffED7549)
            : Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: TextButton(
          onPressed: () {
            setState(() {
              currentIndex = index;
            });
          },
          child: Text(
            name,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: currentIndex == index
                  ? const Color(0xff171714)
                  : const Color(0xffED7549),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail',
          style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                size: 22,
                FontAwesomeIcons.solidHeart,
                color: Color(0xff171714),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: const Color(0xff171714), width: 2),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/jerseryhornets.png',
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Unisex Jordan Brand LaMelo Ball Black',
                    style: GoogleFonts.concertOne(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: const Color(0xffED7549),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Sizes',
                    style: GoogleFonts.concertOne(
                      fontSize: 18,
                      color: const Color(0xff171714),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        buildContainer('xs', 0),
                        const SizedBox(
                          width: 10,
                        ),
                        buildContainer('s', 1),
                        const SizedBox(
                          width: 10,
                        ),
                        buildContainer('M', 2),
                        const SizedBox(
                          width: 10,
                        ),
                        buildContainer('L', 3),
                        const SizedBox(
                          width: 10,
                        ),
                        buildContainer('XL', 4),
                        const SizedBox(
                          width: 10,
                        ),
                        buildContainer('XXL', 5),
                        const SizedBox(
                          width: 10,
                        ),
                        buildContainer('Custom Size', 6),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Show off your style and passion for the game while supporting your favorite NBA star, LaMelo Ball, with this exclusive City Edition jersey.',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff464647),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '\$ 89.99',
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600, fontSize: 26),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 30),
                  ),
                  backgroundColor: WidgetStateProperty.all(
                    const Color(0xffED7549),
                  ),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddToCartPages(),
                    ),
                  );
                },
                child: Text(
                  'Add to Cart',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
