import 'package:flutter/material.dart';
import 'package:penjualan_application/constans.dart';

class AkunPage extends StatefulWidget {
  @override
  _AkunPageState createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        Container(
          color: Palette.bg1,
          height: MediaQuery.of(context).size.height * 0.3,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  CircleAvatar(
                    radius: 55,
                  ),
                  Positioned(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(Icons.edit),
                    ),
                  )
                ],
              ),
              Text(
                "kelompok 5",
                style: TextStyle(fontSize: 29, color: Colors.white),
              ),
              SizedBox(height: 6),
              Text(
                "amikom purwokerto",
                style: TextStyle(
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
            ],
          ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text("favorite"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("7")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text("pengikut"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("12")
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text("keranjang"),
                    SizedBox(
                      height: 5,
                    ),
                    Text("55555")
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Text("informasi"),
              ListTile(
                  title: Text("location"),
                  subtitle: Text("purbalingga"),
                  leading: Icon(Icons.location_on)),
              ListTile(
                  title: Text("email"),
                  subtitle: Text("audiseven1@gmail.com"),
                  leading: Icon(Icons.email)),
              ListTile(
                  title: Text("phone"),
                  subtitle: Text("6281291106675"),
                  leading: Icon(Icons.phone)),
              ListTile(
                  title: Text("about me"),
                  subtitle: Text(
                      "This application was launched to make it easier for you to make purchases of ROTIKU products more comfortably without having to leave the house. Your bread order will be delivered directly to the order address you specify. This website and application is managed by PT Nippon Indosari Corpindo Tbk. Learn more about PT Nippon Indosari Corpindo Tbk. you can see on the site www.rotiku.com"),
                  leading: Icon(Icons.info))
            ],
          ),
        )
      ],
    ));
  }
}
