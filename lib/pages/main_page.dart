import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tutorial/config/app_icons.dart';
import 'package:tutorial/config/app_strings.dart';
import 'package:tutorial/pages/home_page.dart';
import 'package:tutorial/pages/profile_page.dart';
import 'package:tutorial/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icHome),
            label: AppStrings.home,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icFavorite),
            label: AppStrings.favorites,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icAdd),
            label: AppStrings.add,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icMessage),
            label: AppStrings.messages,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.icUser),
            label: AppStrings.user,
          ),
        ],
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: AppColors.primary,
      ),
    );
  }

  final pages = [
    HomePage(),
    const Center(
      child: Text('Favorite'),
    ),
    const Center(
      child: Text('Add Post'),
    ),
    const Center(
      child: Text('Messages'),
    ),
    const ProfilePage(),
  ];
}
