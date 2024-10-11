part of '../profile_screen.dart';


class DataWidget extends StatelessWidget {

  String? boldText;
  String? smallText;

  DataWidget({
    this.boldText,
    this.smallText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$boldText',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: const Color(0xffED7549),
            fontSize: 18,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          '$smallText',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            color: const Color(0xff171714),
          ),
        ),
      ],
    );
  }
}
