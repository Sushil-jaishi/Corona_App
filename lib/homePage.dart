import 'package:corona/myAppBar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: MyAppBar(title: 'Hello User..'),
      body: Text('home'),
    );
  }
}
