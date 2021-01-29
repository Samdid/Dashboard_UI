import 'package:flutter/material.dart';
import 'package:flutter_organizer_dash_app/home.dart';
import 'package:flutter_organizer_dash_app/attendees.dart';

class MainDrawer extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 25),
            color: Colors.blueAccent,
            child: Center(
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.home_filled,),
                    contentPadding: EdgeInsets.only(left: 10),
                    title: Text('Home',
                      style: TextStyle(
                      fontSize: 18,
                    ),
                    ),
                    onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                        return OverView();
                      }));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.event),
                    contentPadding: EdgeInsets.only(left: 10),
                    title: Text('Events',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    onTap: null,
                  ),
                  ListTile(
                    leading: Icon(Icons.people),
                    contentPadding: EdgeInsets.only(left: 10),
                    title: Text('Attendees',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Attendees();
                      }));
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.person),
                    contentPadding: EdgeInsets.only(left: 10),
                    title: Text('Profile',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    onTap: null,
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    contentPadding: EdgeInsets.only(left: 10),
                    title: Text('Settings',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    onTap: null,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

}