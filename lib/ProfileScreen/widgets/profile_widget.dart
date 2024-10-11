part of '../profile_screen.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border:
            Border.all(color: const Color(0xffBBBBBB), width: 2),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/pppp.png',
              width: 85,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Bang Bross',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: const Color(0xffED7549),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '@bangbross',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: const Color(0xff171714),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
