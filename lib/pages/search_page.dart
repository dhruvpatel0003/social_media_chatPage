import 'package:flutter/material.dart';

import '../widgets/bottom_navigation_bar.dart';

class SearchPage extends StatelessWidget {
  static String routeName = '/search-page';

  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
          child: Text('Search Page'),
        ),
        bottomNavigationBar: BottomNavigation());
  }
}
