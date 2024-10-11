import 'package:e_commerce_project/DiscoverScreen/discover_screen.dart';
import 'package:e_commerce_project/HomeScreen/home_screen.dart';
import 'package:e_commerce_project/NotificationScreen/notification_screen.dart';
import 'package:e_commerce_project/ProfileScreen/profile_screen.dart';
import 'package:e_commerce_project/WishlistScreen/wishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff2C2C2C),
        ),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  IconButton buildIconIcon(IconData icon, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          currentIndex = index;
        });
      },
      icon: Container(
        decoration: BoxDecoration(
          color: currentIndex == index
              ? const Color(0xffED7549)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Icon(
            icon,
            color:
                currentIndex == index ? Colors.white : const Color(0xff171714),
          ),
        ),
      ),
    );
  }

  final List<Widget> pages = [
    const HomeScreenPage(),
    const DiscoverScreenPage(),
    const WishlistScreenPage(),
    const NotificationScreenPage(),
    const ProfileScreenPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pages[currentIndex],
          Positioned(
            bottom: 30,
            left: 30,
            right: 30,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black38,
                        offset: Offset(2, 2),
                        blurRadius: 5)
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildIconIcon(FontAwesomeIcons.house, 0),
                  buildIconIcon(FontAwesomeIcons.solidCompass, 1),
                  buildIconIcon(FontAwesomeIcons.solidHeart, 2),
                  buildIconIcon(FontAwesomeIcons.solidBell, 3),
                  buildIconIcon(FontAwesomeIcons.solidUser, 4),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
