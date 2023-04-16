import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../pages/date.dart';
import '../pages/home_page.dart';
import '../pages/search_page.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 2,
          color: Colors.black12,
        ),
        BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          selectedItemColor: Colors.pink,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/bottom_navigation_images/home.png',
                  height: 30,
                ),
                label: 'home'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/bottom_navigation_images/search.png',
                  height: 30,
                ),
                label: 'search'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/bottom_navigation_images/date.png',
                  height: 30,
                ),
                label: 'note'),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/bottom_navigation_images/chat.png',
                  height: 30,
                ),
                label: 'chat')
          ],
          onTap: (value) {
            switch (value) {
              case 0:
                Get.toNamed(HomePage.routeName);
                break;
              case 1:
                Get.toNamed(SearchPage.routeName);
                break;
              case 2:
                Get.toNamed(DatePage.routeName);
                break;
              default:
                Get.toNamed('/');
            }
          },
        ),
      ],
    );
  }
}
