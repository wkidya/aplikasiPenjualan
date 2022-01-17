// ignore_for_file: unnecessary_new

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:penjualan_application/users/landingpage.dart' as users;
import 'package:penjualan_application/constans.dart';

class launcerPage extends StatefulWidget {
  @override
  _launcerPageState createState() => _launcerPageState();
}

class _launcerPageState extends State<launcerPage> {
  @override
  void initState() {
    super.initState();
    startLauncing();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLauncing() async {
    var duration = const Duration(seconds: 7);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (_) => new users.LandingPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.grey.shade200,
                offset: Offset(2, 4),
                blurRadius: 5,
                spreadRadius: 2)
          ],
          color: Palette.bg1,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  "assets/logoRoti.png",
                  height: 180.0,
                  width: 370.0,
                ),
              )
            ]),
      ),
    );
  }
}
