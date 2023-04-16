import 'package:flutter/material.dart';
import 'package:social_media_app/widgets/profile_window.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/horizontal_scrollable_home_screen.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                color: Colors.purple[50],
                child: Column(
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.only(top: 40, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          CircleAvatar(
                              radius: 25,
                              child: Image(
                                image: AssetImage(
                                    'assets/app_bar_images/profile.png'),
                              )),
                          Text(
                            "Find Flames",
                            style: TextStyle(
                                color: Colors.pink,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          Image(
                            image: AssetImage('assets/app_bar_images/img.png'),
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (_, index) {
                          return ScrollableHomeScreen(index);
                        },
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                ),
              )),
          Positioned(
            left: 0,
            right: 0,
            top: 330,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white,
              ),
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (_, index) {
                    return ProfileWindow(index);
                  },
                  separatorBuilder: (_, index) {
                    return const Divider(
                      color: Colors.grey,
                      thickness: 0.8,
                    );
                  },
                  itemCount: 3),
            ),
          ),
          Positioned(
            top: 306,
            left: 24,
            child: Container(
              height: 50,
              width: 350,
              decoration: const BoxDecoration(
                color: Colors.white,
                // border: Border.all(color:Colors.white),
                boxShadow: [
                  BoxShadow(spreadRadius: 1, blurRadius: 5, color: Colors.grey)
                ],
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Container(
                margin: const EdgeInsets.only(left: 25),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: const BottomNavigation(),
    );
  }
}
