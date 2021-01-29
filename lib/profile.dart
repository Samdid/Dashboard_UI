import 'package:flutter/material.dart';
import 'package:flutter_organizer_dash_app/settings.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProfileState();
  }
}

class ProfileState extends State<Profile> {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController aboutController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Profile',
          style: TextStyle(
            fontSize: 25
          ),),
        backgroundColor: Colors.green,
        elevation: 10,
        actions: [
        IconButton(
        icon: Icon(Icons.settings,
        color: Colors.white,),
    onPressed: (){
      Navigator.of(context).push(MaterialPageRoute(
        builder: (BuildContext context){
        return Settings();
    }
     ));
    }
    )
    ],
    ),
    body: Container(
    padding: EdgeInsets.only(left: 16,top: 25,right: 16),
    child: GestureDetector(
    onTap: (){
    FocusScope.of(context).unfocus();
    },
    child: ListView(
    children: [
    Padding(
      padding: const EdgeInsets.only(bottom:35.0, top: 20),
      child: Center(
        child: Text('Edit Profile',style: TextStyle(
        fontSize: 25
        ),),
      ),
    ),
    Center(
    child: Stack(
    children: [
    Container(
    width: 130,
    height: 130,
    decoration: BoxDecoration(
    border: Border.all(
    width: 4,
    color: Colors.white,
    ),
    boxShadow: [
    BoxShadow(
    spreadRadius: 2,
    blurRadius: 10,
    color: Colors.grey,
    )
    ],
    shape: BoxShape.circle,

        image: DecorationImage(
            fit: BoxFit.cover,
          image: AssetImage('images/ha1.png')
          //image: NetworkImage(
           // "https://tse1.mm.bing.net/th?id=OIP.s-kN_razst5S7d0slKsZqwHaHw&pid=Api&P=0&w=300&h=300",
          //)
        )
    ),
    ),
    Positioned(
    bottom: 0,
    right: 0,
    child: Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
    width: 4,
    color: Colors.white
    ),
    color: Colors.green
    ),
    child: Icon(
    Icons.edit,
    color: Colors.white,
    ),
    ),
    )
    ],
    ),
    ),
    SizedBox(
    height: 35,
    ),
    Padding(
    padding: EdgeInsets.only(bottom: 35),
    child: TextFormField(
    // ignore: missing_return
    validator: (String value) {
      if (value.isEmpty) {
        return 'Please Enter Oraganization Name';
      }
    },
    controller: nameController,
    decoration: InputDecoration(
    contentPadding: EdgeInsets.only(bottom: 3),
    labelText: 'Organization\'s Name',
        labelStyle: TextStyle(
            fontSize: 20
        )
    ),
    ),
    ),

    Padding(
    padding: EdgeInsets.only(bottom: 35),
    child: TextFormField(
      // ignore: missing_return
      validator: (String value){
        // ignore: missing_return
        if(value.isEmpty){
          return 'Please Enter Email';
        }
      },
      controller: emailController,
    decoration: InputDecoration(
    contentPadding: EdgeInsets.only(bottom: 3),
    labelText: 'Email Addresss',
        labelStyle: TextStyle(
            fontSize: 20
        ),
      hintText: 'eg.abc@gmail.com',
      hintStyle: TextStyle(
        fontSize: 16
      )
    ),
    ),
    ),
      Padding(
        padding: EdgeInsets.only(bottom: 35),
        child: TextFormField(
          // ignore: missing_return
          validator: (String value){
            if(value.isEmpty){
              return 'Please Enter Something';
            }
          },
          controller: aboutController,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 3),
            labelText: 'About',
            labelStyle: TextStyle(
              fontSize: 20
            )
          ),
        ),
      ),
      Container(
        padding: EdgeInsets.only(bottom: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            OutlineButton(
              padding: EdgeInsets.symmetric(horizontal: 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
          onPressed: (){
            debugPrint('Cancel button is clicked!');
          },
              child: Text('CANCEL',
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 2.2,
                  color: Colors.black
                )),
          ),
            RaisedButton(
                onPressed: (){
                  debugPrint('Save button isd clicked!');
                },
                color:Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 50),
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Text(
                'SAVE',
                style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 2.2,
                  color: Colors.white
                ),
              ),
            )


          ],
        ),
      )
    ],
    ),
    ),
    ),
    );
    }

  }
