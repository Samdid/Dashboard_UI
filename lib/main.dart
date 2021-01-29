import 'package:flutter/material.dart';
import 'package:flutter_organizer_dash_app/bottom_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DashBoard',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.blue,
        //brightness: Brightness.dark,
      ),
      home: SafeArea(
        top: true,
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(10),
          ),
          bottomNavigationBar: BottomNavBar(),
        ),
      ),
    );
  }


}


