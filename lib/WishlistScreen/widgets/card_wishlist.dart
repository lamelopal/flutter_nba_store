part of '../wishlist_screen.dart';

class CardWishlistWidget extends StatelessWidget {
  String? imageWishlist;
  String? titleWishlist1;
  String? titleWishlist2;
  String? priceWishlist;

  CardWishlistWidget({
    this.imageWishlist,
    this.priceWishlist,
    this.titleWishlist1,
    this.titleWishlist2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: const Color(0xffBBBBBB), width: 2),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              '$imageWishlist',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          width: 25,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$titleWishlist1',
              style: GoogleFonts.concertOne(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xff171714),
              ),
            ),
            Text(
              '$titleWishlist2',
              style: GoogleFonts.concertOne(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color(0xff171714),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '$priceWishlist',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0xffED7549),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffBBBBBB), width: 1),
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                        color: Color(0xffBBBBBB),
                        offset: Offset(1, 1),
                        blurRadius: 0)
                  ]),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AddToCartPages(),),);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: const Color(0xff171714),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                ),
                child: Text(
                  'Add to Cart',
                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
