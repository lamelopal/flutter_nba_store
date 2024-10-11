part of '../discover_screen.dart';


class UpperWidget extends StatelessWidget {
  const UpperWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            'NBA STORE',
            style: GoogleFonts.luckiestGuy(
                fontSize: 30, color: const Color(0xff171714)),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
                size: 20,
                color: Color(0xff171714),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartShopping,
                size: 20,
                color: Color(0xff171714),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
