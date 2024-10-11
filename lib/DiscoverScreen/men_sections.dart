part of 'discover_screen.dart';

class MenSectionsWidget extends StatelessWidget {
  const MenSectionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                color: const Color(0xffFFDFC8),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SALE: EXTRA 20% OFF',
                    style: GoogleFonts.concertOne(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffED7549),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'With Code: "LAMELOPAL"',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black54),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MenCard(
              imageNya: 'assets/images/newin.png',
              textNya: 'NEW IN',
            ),
            const SizedBox(
              height: 15,
            ),
            MenCard(
              imageNya: 'assets/images/cloth.png',
              textNya: 'CLOTHING',
            ),
            const SizedBox(
              height: 15,
            ),
            MenCard(
              imageNya: 'assets/images/shoesnew.png',
              textNya: 'SHOES',
            ),
            const SizedBox(
              height: 15,
            ),
            MenCard(
              imageNya: 'assets/images/jerjer.png',
              textNya: 'JERSEY',
            ),
            const SizedBox(height: 100,),
          ],
        ),
      ),
    );
  }
}
