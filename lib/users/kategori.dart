import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[600],
            child: const Center(
              child: Text(
                'Aneka Rasa roti tawar',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[500],
            child: const Center(
              child: Text(
                'Aneka Kue',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            child: const Center(
              child: Text(
                'Aneka Roti',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
