import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EventDetail extends StatefulWidget {
  String appBarTitle;
  EventDetail(this.appBarTitle);
  @override
  State<StatefulWidget> createState() {
    return EventDetailState(this.appBarTitle);
  }
}

class EventDetailState extends State<EventDetail> {
  String appBarTitle;
  static var _priorities = ["Live", "Ended"];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController startController = TextEditingController();
  TextEditingController endController = TextEditingController();

  var _formKey = GlobalKey<FormState>();

  EventDetailState(this.appBarTitle);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme
        .of(context)
        .textTheme
        .title;
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        // ignore: missing_return, missing_return
        moveToLastScreen();
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pinkAccent,
          title: Text(this.appBarTitle),
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: () {
              moveToLastScreen();
            },),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
              padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: ListView(
                children: [
                  ListTile(
                    title: DropdownButton(
                      items: _priorities.map((String dropDownStringItem) {
                        return DropdownMenuItem<String>(
                          value: dropDownStringItem,
                          child: Text(dropDownStringItem),
                        );
                      }
                      ).toList(),
                      style: textStyle,
                      value: "Live",

                      onChanged: (valueSelectedByUser) {
                        setState(() {
                          debugPrint("User Selected $valueSelectedByUser");
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: TextFormField(
                      controller: titleController,
                      validator:(String value){
                        if(value.isEmpty){
                          return 'PLease Enter The Event Name';
                        }
                      },
                      style: textStyle,

                      onChanged: (value) {
                        debugPrint("Event Name is changed");
                      },
                      decoration: InputDecoration(
                          labelText: "Event Name",
                          labelStyle: textStyle,
                          errorStyle: TextStyle(
                            fontSize: 15.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          )
                      ),
                    ),),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                              controller: startController,
                              validator:(String value){
                                if(value.isEmpty){
                                  return 'PLease Enter The Date';
                                }
                              },
                              style: textStyle,

                              onChanged: (value) {
                                debugPrint("Start Date is changed");
                              },
                              decoration: InputDecoration(
                                  labelText: "Started On",
                                  labelStyle: textStyle,
                                  hintText: 'Date',
                                  errorStyle: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  )
                              ),
                            ),
                        ),
                        SizedBox(
                          width:15
                        )
                        ,
                         Expanded(
                           child: TextFormField(
                              controller: endController,
                              validator:(String value){
                                if(value.isEmpty){
                                  return 'PLease Enter The Date';
                                }
                              },
                              style: textStyle,

                              onChanged: (value) {
                                debugPrint("End Date is changed");
                              },
                              decoration: InputDecoration(
                                  labelText: "Ended On",
                                  labelStyle: textStyle,
                                  hintText: 'Date',
                                  errorStyle: TextStyle(
                                    fontSize: 15.0,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  )
                              ),
                            ),
                         ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: TextFormField(
                      controller: descriptionController,
                      style: textStyle,
                      validator:(String value){
                        if(value.isEmpty){
                          return 'PLease Enter The Description';
                        }
                      },

                      onChanged: (value) {
                        debugPrint("Description is changed.");
                      },
                      decoration: InputDecoration(
                          labelStyle: textStyle,
                          labelText: "Description",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)
                          )
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: RaisedButton(
                              color: Colors.pinkAccent,
                              textColor: Colors.white,
                              child: Text(
                                "Save",
                                textScaleFactor: 1.5,
                              ),
                              onPressed: () {
                                setState(() {
                                  debugPrint("Save button is clicked!");
                                  if(_formKey.currentState.validate()){
                                    debugPrint("Event is saved!");
                                  }
                                });
                              },
                            )
                        ),
                        Container(width: 5.0,),
                        Expanded(
                            child: RaisedButton(
                              color: Colors.pinkAccent,
                              textColor: Colors.white,
                              child: Text(
                                "Delete",
                                textScaleFactor: 1.5,
                              ),
                              onPressed: () {
                                setState(() {
                                  debugPrint("Delete button is clicked!");
                                });
                              },
                            ))
                      ],
                    ),
                  )
                ],
              )

          ),
        ),

      ),
    );
  }

  void moveToLastScreen() {
    Navigator.pop(context);
  }

}