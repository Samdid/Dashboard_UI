import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return SearchBarState();
  }
}

class SearchBarState extends State<SearchBar>{

  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text('Attendees', style: TextStyle(
    fontSize: 25
  ),);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: cusSearchBar,
        actions: [
          IconButton(
              icon: cusIcon,
              color: Colors.white,
              iconSize: 30,
              padding: EdgeInsets.only(right: 20,top: 20,bottom: 20),
              onPressed: (){
                setState(() {
                  if(this.cusIcon.icon == Icons.search){
                    this.cusIcon = Icon(Icons.cancel);
                    this.cusSearchBar = TextField(
                      textInputAction: TextInputAction.go,
                      decoration: InputDecoration(
                        // border: InputBorder.none,
                          hintText: ('Enter Attendee\'s Name'),
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
    );
  }
}