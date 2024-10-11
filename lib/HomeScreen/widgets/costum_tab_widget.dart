part of '../home_screen.dart';

class TabBarKwWidget extends StatelessWidget {
  String? imageSell;
  String? titleSell;
  VoidCallback? onTap;

  TabBarKwWidget({
    super.key,
    this.imageSell,
    this.titleSell,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 55,
            decoration: BoxDecoration(
              border: Border.all(color: Color(0xffBBBBBB), width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('$imageSell'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            '$titleSell',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
