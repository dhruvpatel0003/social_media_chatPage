import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileWindow extends StatelessWidget {

  static var profileImages= [
    'assets/chat_window_images/profile_1.png',
    'assets/chat_window_images/profile_3.png',
    'assets/chat_window_images/profile_3.png',
  ];
  static var profileStatus = [
    'Hii',
    'Hii',
    'Typing'
  ];
  static var profileName = [
    'Jordan',
    'Tim',
  'James'
  ];
  static var notifications = [
    'assets/notification/notification_1.png',
    '',
    'assets/notification/notification_2.png'
  ];

  String time = '13:10';

  late int profileId;
   ProfileWindow(this.profileId);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red,
      height: 70,
      width: 130,
      margin: EdgeInsets.only(top: 5, bottom: 5),

      child: ListTile(
        leading: CircleAvatar(
          child: Image(image: AssetImage(profileImages[profileId]),),
          radius: 30,
        ),
        title: Row(
          children: [
            Text(profileName[profileId],style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 5,
            ),
            if (profileId!=2)
            Image.asset(height: 17, 'assets/chat_window_images/img.png'),
          ],
        ),
        subtitle: profileId!=2?Text(profileStatus[profileId]):Text(profileStatus[profileId],style: TextStyle(color: Colors.pink,fontStyle: FontStyle.italic),),
        trailing: SizedBox(
          width: 70,
          child: Container(
            padding: EdgeInsets.only(top: 6),
            child: Column(
              children: [
                Text('13:10'),
                SizedBox(height: 5,),
                if(profileId!=1)
                Image(image: AssetImage(notifications[profileId]),height:20,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
