import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';

part 'widgets/upper_section_widget.dart';

part 'men_sections.dart';

part 'women_sections.dart';

part 'widgets/men_card_widget.dart';

class DiscoverScreenPage extends StatefulWidget {
  const DiscoverScreenPage({super.key});

  @override
  State<DiscoverScreenPage> createState() => _DiscoverScreenPageState();
}

class _DiscoverScreenPageState extends State<DiscoverScreenPage> {
  int currentIndex = 0;

  final List<Widget> pagess = [
    const MenSectionsWidget(),
    const WomenSectionsWidget(),
  ];

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Column(
            children: [
              const UpperWidget(),
              Expanded(
                child: ContainedTabBarView(
                  tabs: [
                    Text(
                      'MEN',
                      style: GoogleFonts.concertOne(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff171714),
                      ),
                    ),
                    Text(
                      'WOMEN',
                      style: GoogleFonts.concertOne(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff171714),
                      ),
                    )
                  ],
                  views: pagess,
                  onChange: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  tabBarProperties: const TabBarProperties(
                    indicatorColor: Color(0xffED7549),
                    indicatorWeight: 4,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
