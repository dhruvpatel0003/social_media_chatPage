import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_bar.dart';

class DatePage extends StatelessWidget {
  static String routeName = '/date-page';

  const DatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text('DatePage'),
        ),
        bottomNavigationBar: BottomNavigation());
    ;
  }
}
