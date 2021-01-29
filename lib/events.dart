import 'package:flutter/material.dart';
import 'package:flutter_organizer_dash_app/event_detail.dart';
import 'package:flutter_organizer_dash_app/logo.dart';


class EventList extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return EventListState();
  }
}

class EventListState extends State<EventList>{
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text('Events',
    style: TextStyle(
      fontSize: 25,
    ),);

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
              elevation: 10,
              backgroundColor: Colors.pinkAccent,
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
                                hintText: ('Search Event'),
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
                          this.cusSearchBar = Text('Events',
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
                      child: Text('Events',
                      style: TextStyle(
                        fontSize: 30,
                      ),),
                    ),
                    Center(
                      child: Container(

                        child: MyEventLogo(),
                      ),
                    ),

                    Scaffold(
                      body: getEventListView(),
                    )
                  ],
                ),
              ),
            ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.pinkAccent,
          onPressed: (){
            debugPrint("FAB clicked!");
            navigateToDetail("Add Event");
          },
          tooltip: 'Add Event',
          child: Icon(Icons.add),

        )


      );
  }
  ListView getEventListView(){
    TextStyle textStyle = Theme.of(context).textTheme.subhead;
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context ,int position){
          return Card(
            color: Colors.white,
            elevation: 2.0,
            child: ListTile(
              leading: CircleAvatar(
                radius: 2,
                backgroundColor: Colors.lightGreen,
                //child:Icon(Icons.keyboard_arrow_right),
              ),
              title: Text("Event Name"),
              subtitle: Text("Date"),
              trailing: Icon(Icons.delete,color: Colors.grey,),
              onTap: (){
                debugPrint("An Event Is Tappped");
                navigateToDetail("Edit Event");
              },
            ),
          );
        }
    );
  }

  void navigateToDetail(String title){
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return EventDetail(title);
    }));
  }
}