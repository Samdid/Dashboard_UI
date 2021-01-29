import 'package:flutter/material.dart';
import 'package:flutter_organizer_dash_app/logo.dart';

class OverView extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return OverViewState();
  }
}

class OverViewState extends State<OverView>{

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: (){
        // ignore: missing_return
        Navigator.pop(context);
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          title: Text('Home',style: TextStyle(
            fontSize: 25
          ),),
        ),
        //bottomNavigationBar: BottomNavBar(),
        body: Form(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: [
                Container(
                    child: MyLogo(),
                padding: EdgeInsets.only(top: 40, bottom: 30),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 30.0,bottom: 30.0),
                  child: Center(
                    child: Expanded(
                      child: Text(
                        'Welcome To HACK-OV8!!',
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height:300,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.0,bottom: 30.0),
                  child: Center(
                    child: Expanded(
                      child: Text(
                        'Our Sponsors...',
                        style: TextStyle(
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    child: MySponsor(),
                    padding: EdgeInsets.only(top: 0, bottom: 30),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

}

