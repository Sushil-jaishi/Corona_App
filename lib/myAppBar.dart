import 'package:corona/privacyPolicy.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget{

  final String title;
  MyAppBar({required this.title});
  @override
  State<MyAppBar> createState() => MyAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class MyAppBarState extends State<MyAppBar> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.transparent,
        title:Text(widget.title),
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
  handleClick(String value){
    if(value=='Privacy Policy') {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return PrivacyPolicy();
      },));
    }
  }

}
