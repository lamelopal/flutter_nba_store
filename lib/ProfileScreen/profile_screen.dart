import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

part 'widgets/profile_widget.dart';

part 'widgets/line_widget.dart';

part 'widgets/data_widget.dart';

part 'widgets/settings_widget.dart';

part 'widgets/contact_widget.dart';

class ProfileScreenPage extends StatelessWidget {
  const ProfileScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(FontAwesomeIcons.penToSquare,
                  color: Color(0xff171714)),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          children: [
            const ProfileImageWidget(),
            const SizedBox(
              height: 30,
            ),
            ContactWidget(
              iconContact: FontAwesomeIcons.phone,
              textContact: '+91 9876543210',
            ),
            const SizedBox(
              height: 15,
            ),
            ContactWidget(
              iconContact: FontAwesomeIcons.envelope,
              textContact: 'BangBross@gmail.com',
            ),
            const SizedBox(
              height: 25,
            ),
            const LineWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DataWidget(
                    boldText: '\$ 872.00',
                    smallText: 'Wallet',
                  ),
                  Container(
                    height: 30,
                    width: 1,
                    color: const Color(0xffBBBBBB),
                  ),
                  DataWidget(
                    boldText: '34',
                    smallText: 'Orders',
                  ),
                ],
              ),
            ),
            const LineWidget(),
            SettingsWidget(
              iconSettings: FontAwesomeIcons.heart,
              textSettings: 'Your Favorites',
            ),
            const LineWidget(),
            SettingsWidget(
              iconSettings: FontAwesomeIcons.moneyCheckDollar,
              textSettings: 'Payment Methods',
            ),
            const LineWidget(),
            SettingsWidget(
              iconSettings: FontAwesomeIcons.peopleArrows,
              textSettings: 'Tell Your Friends',
            ),
            const LineWidget(),
            SettingsWidget(
              iconSettings: FontAwesomeIcons.tags,
              textSettings: 'Promotions',
            ),
            const LineWidget(),
            SettingsWidget(
              iconSettings: FontAwesomeIcons.gear,
              textSettings: 'Settings',
            ),
            const LineWidget(),
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    const Icon(
                      FontAwesomeIcons.powerOff,
                      color: Color(0xffFF4646),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Text(
                      'Log out',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xffFF4646),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
