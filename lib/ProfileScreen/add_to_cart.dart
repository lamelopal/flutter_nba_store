import 'package:e_commerce_project/HomeScreen/home_screen.dart';
import 'package:e_commerce_project/MainScreen/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCartPages extends StatelessWidget {
  const AddToCartPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: const Color(0xff171714),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFE0C3),
                      borderRadius: BorderRadius.circular(45),
                      border: Border.all(
                        color: const Color(0xff171714),
                        width: 2,
                      )),
                  child: const Padding(
                    padding: EdgeInsets.all(40),
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.check,
                        size: 50,
                        color: Color(0xff171714),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'CONGRATULATIONS! YOUR ORDER HAS BEEN PLACED',
                    style: GoogleFonts.concertOne(
                        fontWeight: FontWeight.w600, fontSize: 30),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'Congratulations! Your order has been successfully placed. It is being reviewed and will be processed shortly.',
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(
              const Color(0xffED7549),
            ),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const MainPage(),
              ),
            );
          },
          child: Text(
            'Back To Home',
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
