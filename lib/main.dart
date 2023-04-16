import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_media_app/pages/chat_page.dart';
import 'package:social_media_app/pages/date.dart';
import 'package:social_media_app/pages/home_page.dart';
import 'package:social_media_app/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      // home:ChatPage(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => const ChatPage(),
        SearchPage.routeName: (ctx) => const SearchPage(),
        HomePage.routeName: (ctx) =>const HomePage(),
        DatePage.routeName: (ctx) => const DatePage(),
      },
    );
  }
}