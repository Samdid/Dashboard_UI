import 'package:flutter/material.dart';
import 'package:flutter_organizer_dash_app/home.dart';


class Attendees extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return AttendeesState();
  }
}

class AttendeesState extends State<Attendees>{
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text('Attendees',
    style: TextStyle(
      fontSize: 25,
    ),);

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: (){
        // ignore: missing_return
        Navigator.pop(context);
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.redAccent,
          title: cusSearchBar,
          actions: [
            IconButton(
                icon: cusIcon,
                color: Colors.white,
                iconSize: 30,
                //padding: EdgeInsets.only(right: 20,top: 20,bottom: 20),
                onPressed: (){
                  setState(() {
                    if(this.cusIcon.icon == Icons.search){
                      this.cusIcon = Icon(Icons.cancel);
                      this.cusSearchBar = TextField(
                        textInputAction: TextInputAction.go,
                        decoration: InputDecoration(
                          // border: InputBorder.none,
                            hintText: ('Search Attendee'),
                            hintStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 20
                            )
                        ),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      );
                    }
                    else{
                      this.cusIcon = Icon(Icons.search);
                      this.cusSearchBar = Text('Attendees',
                        style: TextStyle(
                          fontSize: 25,
                        ),);
                    }
                  });
                }),

          ],

        ),
        //drawer: MainDrawer(),
        body: Container(
          child: Padding(

            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, top: 10),
                  child: Text('Attendees',
                    style: TextStyle(
                      fontSize: 30,
                    ),),
                ),
                Scaffold(
                  body: getAttendeeListView(),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView getAttendeeListView(){
    return ListView.builder(
      itemCount: count,
        itemBuilder: (BuildContext context, int position){
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              radius: 5,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person),
            ),
            title: Text('Attendee Name'),
            subtitle: Text('Email id'),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              debugPrint('An Attendee Is Tapped');
            },
          ),
        );
        });
  }
}