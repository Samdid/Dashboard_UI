import 'package:flutter/material.dart';

class MyLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/logo.jpeg');
    Image image = Image(
      image: assetImage,
      width: 340.0,
      height: 300.0,
    );
    return Center(
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        child: image,
      ),
    );
  }
}

class MySponsor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/Devenza_free-file.png');
    Image image = Image(
      image: assetImage,
      width: 340.0,
      height: 150.0,
    );
    return Center(
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.circular(20),
        child: image,
      ),
    );
  }
}

class MyEventLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/rsz_script-logo.png');
    Image image = Image(
      image: assetImage,
      width: 300.0,
      height: 200.0,
    );
    return Center(
      child: Material(
        elevation: 00,
        borderRadius: BorderRadius.circular(20),
        child: image,
      ),
    );
  }
}
