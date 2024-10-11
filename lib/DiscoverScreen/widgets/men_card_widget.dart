part of '../discover_screen.dart';

class MenCard extends StatelessWidget {
  String? imageNya;
  String? textNya;
  VoidCallback? onTap;

  MenCard({super.key, this.imageNya, this.textNya, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 145,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(23),
              child: Image.asset(
                '$imageNya',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Text(
                '$textNya',
                style: GoogleFonts.concertOne(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                  shadows: [
                    const Shadow(
                      color: Color(0xffED7549),
                      blurRadius: 0,
                      offset: Offset(3, 3),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
