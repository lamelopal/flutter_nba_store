part of '../profile_screen.dart';

class ContactWidget extends StatelessWidget {
  IconData? iconContact;
  String? textContact;

  ContactWidget({
    this.iconContact,
    this.textContact,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconContact,
          size: 18,
          color: const Color(0xff888782),
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          '$textContact',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: const Color(0xff888782),
          ),
        )
      ],
    );
  }
}
