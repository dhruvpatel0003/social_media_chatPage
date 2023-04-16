import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScrollableHomeScreen extends StatelessWidget {
  late int profileId;

  static var profileImage = [
    'assets/scrollable_bar_profile_image/profile_1.png',
    'assets/scrollable_bar_profile_image/profile_2.png',
    'assets/scrollable_bar_profile_image/profile_3.png',
    'assets/scrollable_bar_profile_image/profile_2.png',
    'assets/scrollable_bar_profile_image/profile_3.png',
    'assets/scrollable_bar_profile_image/profile_2.png',
    'assets/scrollable_bar_profile_image/profile_3.png',
  ];

  static var names = [
    'Likes',
    'Tony',
    'James',
    'Jon',
    'Tony',
    'James',
    'Jimmy'
  ];

  ScrollableHomeScreen(this.profileId);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: 130,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              image: DecorationImage(
                  image: AssetImage(profileImage[profileId]),
                  fit: BoxFit.cover)),
        ),
        Positioned(
            left: 37,
            top: 140,
            child: Container(
              height: 20,
              width: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(names[profileId]),
                  if(names[profileId]=='Tony' || names[profileId]=='James')
                    Image(image: AssetImage('assets/chat_window_images/img.png'),height:15)
                ],
              )
            ))
      ],
    );
  }
}
