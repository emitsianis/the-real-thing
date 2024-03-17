import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_real_thing/config/app_strings.dart';
import 'package:the_real_thing/pages/home_page.dart';
import 'package:the_real_thing/pages/profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final pages = [
    HomePage(),
    const Center(child: Text(AppStrings.favorites)),
    const Center(child: Text(AppStrings.addPost)),
    const Center(child: Text(AppStrings.messages)),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.amber,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_home.svg"),
            label: AppStrings.home,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_favorite.svg"),
            label: AppStrings.favorites,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_messages.svg"),
            label: AppStrings.addPost,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_messages.svg"),
            label: AppStrings.messages,
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_user.svg"),
            label: AppStrings.user,
          ),
        ],
      ),
    );
  }
}
