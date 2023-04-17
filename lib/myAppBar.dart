import 'package:corona/privacyPolicy.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:Text('Hello User..'),
        actions: <Widget>[
          Icon(Icons.info_outline),
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Profile', 'Notices','LogOut','Privacy Policy','Terms of service'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Row(
                    children: [
                      Icon(appbarIcon(choice),color: Colors.green),
                      Text(' $choice'),
                    ],
                  ),
                );
              }).toList();
            },
          ),
        ],
      ),
    );
  }
  void handleClick(String value) {
    switch (value) {
      case 'Profile':
        break;
      case 'Notices':
        break;
      case 'LogOut':
        break;
      case 'Privacy Policy':
        break;
      case 'Terms of service':
        break;
    }
  }

  IconData? appbarIcon(String choice) {
    if(choice=='Profile'){
      return Icons.person;
    }else if(choice=='Notices'){
      return Icons.notifications;
    }else if(choice=='LogOut'){
      return Icons.logout;
    }else if(choice=='Privacy Policy'){
      return Icons.error_sharp;
    }else if(choice=='Terms of service'){
      return Icons.error;
    }
  }

}
