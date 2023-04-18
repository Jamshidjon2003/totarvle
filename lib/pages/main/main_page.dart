import 'package:easy_to_travel/pages/main/my_purchases/my_purchases_page.dart';
import 'package:easy_to_travel/pages/main/profile/profile_page.dart';
import 'package:easy_to_travel/pages/main/scoreboard/scoreboard_page.dart';
import 'package:flutter/material.dart';

import 'home/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
          index: currentIndex,
          children:  [
            HomePage(),
            MyPurchasesPage(),
            ScoreboardPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'MyPurchases',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Scoreboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        )
    );
  }
}
