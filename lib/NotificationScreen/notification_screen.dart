import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreenPage extends StatelessWidget {
  const NotificationScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: const Color(0xff171714),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              iconSize: 22,
              icon: const Icon(
                FontAwesomeIcons.bell,
                color: Color(0xff171714),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Nothing Notifications here',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w400, fontSize: 16),
        ),
      ),
    );
  }
}
