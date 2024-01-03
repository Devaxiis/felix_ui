import 'dart:ui';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:felix_ui/presentation/ui/screen/favourite_screen.dart';
import 'package:felix_ui/presentation/ui/screen/home_screen.dart';
import 'package:felix_ui/presentation/ui/screen/profile_screen.dart';
import 'package:felix_ui/presentation/ui/screen/savat_screen.dart';
import 'package:felix_ui/presentation/ui/screen/shop_screen.dart';
import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  PageController controller = PageController();
  int _page = 0;


  List<Widget> item = const [
    SizedBox(
        height: 25,
        width: 25,
        child: Image(image: AssetImage("assets/icons/ic_home.png",),height: 30,width: 30,)),
    SizedBox(
        height: 25,
        width: 25,child: Image(image: AssetImage("assets/icons/ic_shop.png",),height: 30,width: 30,)),
    SizedBox(height: 25,
        width: 25,child: Image(image: AssetImage("assets/icons/ic_delete.png",),height: 30,width: 30,)),
    SizedBox(height: 25,
        width: 24,child: Image(image: AssetImage("assets/icons/ic_heart.png",),height: 30,width: 30,)),
    SizedBox(
        height: 25,
        width: 25,
        child: Image(image: AssetImage("assets/icons/ic_user.png",),height: 30,width: 30,)),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomeScreen(),
            ShopScreen(),
            SavatScreen(),
            FavouriteScreen(),
            ProfileScreen(),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        height: 65,
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: const Color(0xff614FE0),
        color: const Color(0xff14181E),
        items: item,
        index: _page,
        onTap: (index) {
          _page = index;
          controller.animateToPage(_page, duration: const Duration(milliseconds: 600), curve: Curves.easeIn);
          setState(() {});
        },
      ),
    );
  }
}
