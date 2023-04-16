import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_bar.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/home-page';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text('HomePage'),
        ),
        bottomNavigationBar: BottomNavigation());
  }
}
