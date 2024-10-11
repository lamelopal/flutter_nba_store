part of '../home_screen.dart';

class PromotionCard extends StatelessWidget {
  String? imageCard;
  String? title1;
  String? title2;

  PromotionCard({
    super.key,
    this.imageCard,
    this.title1,
    this.title2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [
            Image.asset(
              '$imageCard',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 180, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$title1',
                    style: GoogleFonts.concertOne(
                        color: Colors.white,
                        fontSize: 30,
                        height: 1.2,
                        shadows: [
                          const Shadow(
                              color: Color(0xff171714),
                              offset: Offset(2, 2),
                              blurRadius: 0),
                        ]),
                  ),
                  Text(
                    '$title2',
                    style: GoogleFonts.concertOne(
                        color: Colors.white,
                        fontSize: 30,
                        height: 1.2,
                        shadows: [
                          const Shadow(
                              color: Color(0xff171714),
                              offset: Offset(2, 2),
                              blurRadius: 0),
                        ]),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1000),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0xff171714),
                            offset: Offset(3, 4),
                            blurRadius: 0)
                      ],
                      border: Border.all(
                        color: const Color(0xff171714),
                        width: 2,
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const AddToCartPages(),),);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xff171714),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                      ),
                      child: Text(
                        'Add to Cart',
                        style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
