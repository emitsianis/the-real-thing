import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:the_real_thing/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  final pages = [
    HomePage(),
    const Center(child: Text("Favorite")),
    const Center(child: Text("Add Post")),
    const Center(child: Text("Messages")),
    const Center(child: Text("User")),
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
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_favorite.svg"),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_messages.svg"),
            label: "Add Post",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_messages.svg"),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset("assets/svg/ic_user.svg"),
            label: "User",
          ),
        ],
      ),
    );
  }
}
