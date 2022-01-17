import 'package:flutter/material.dart';
import 'package:penjualan_application/constans.dart';
import 'package:penjualan_application/users/akunpage.dart';
import 'package:penjualan_application/users/berandapage.dart';
import 'package:penjualan_application/users/keranjangpage.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    new BerandaPage(),
    new KeranjangPage(),
    new AkunPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.bg1,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _bottomNavCurrentIndex = index;
          });
        },
        currentIndex: _bottomNavCurrentIndex,
        items: [
          BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.home,
                color: Colors.blue,
              ),
              icon: new Icon(
                Icons.home,
                color: Colors.grey,
              ),
              label: "Beranda"),
          BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.shopping_cart,
                color: Colors.blue,
              ),
              icon: new Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
              label: "Keranjang"),
          BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.account_circle,
                color: Colors.blue,
              ),
              icon: new Icon(
                Icons.account_circle,
                color: Colors.grey,
              ),
              label: "Akun"),
        ],
      ),
    );
  }
}
