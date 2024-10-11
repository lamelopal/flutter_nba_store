part of '../wishlist_screen.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        height: 1,
        width: double.infinity,
        color: const Color(0xffBBBBBB),
      ),
    );
  }
}
