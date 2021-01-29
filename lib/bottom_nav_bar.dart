import 'package:flutter/material.dart';
import 'package:flutter_organizer_dash_app/home.dart';
import 'package:flutter_organizer_dash_app/attendees.dart';
import 'package:flutter_organizer_dash_app/events.dart';
import 'package:flutter_organizer_dash_app/profile.dart';
import 'package:flutter_organizer_dash_app/settings.dart';



class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavBarState();
  }
}

class BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home,size: 30),
              title: Text('Home'),
              backgroundColor: Colors.blueAccent),
          BottomNavigationBarItem(
            icon: Icon(Icons.event,size: 30),
            title: Text('Events'),
            backgroundColor: Colors.pinkAccent,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people,size: 30),
              title: Text('Attendees'),
              backgroundColor: Colors.redAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30),
              title: Text('Profile'),
              backgroundColor: Colors.green),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: switchScreen(_currentIndex),
    );
  }

  switchScreen(int currentIndex) {
    switch (currentIndex) {
      case 0:
        //Navigator.push(context, MaterialPageRoute(builder: (context) {
          return OverView();
       // }));
        break;
      case 1:
       // Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EventList();
       // }));
        break;
      case 2:
       // Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Attendees();
      //  }));
        break;
      case 3:
        return Profile();
        break;
      case 4:
        return Settings();
        break;

    }
  }

// ignore: missing_return

}
