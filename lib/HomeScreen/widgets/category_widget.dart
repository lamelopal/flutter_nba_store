part of '../home_screen.dart';


class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            'CATEGORIES',
            style: GoogleFonts.concertOne(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: const Color(0xffED7549),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'View all',
            style: GoogleFonts.poppins(
                fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}

