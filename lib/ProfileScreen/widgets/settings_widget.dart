part of '../profile_screen.dart';


class SettingsWidget extends StatelessWidget {

  IconData? iconSettings;
  String? textSettings;

  SettingsWidget({
    this.iconSettings,
    this.textSettings,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          children: [
            Icon(
              iconSettings,
              color: const Color(0xffED7549),
            ),
            const SizedBox(
              width: 25,
            ),
            Text(
              '$textSettings',
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff171714)),
            ),
          ],
        ),
      ),
    );
  }
}
