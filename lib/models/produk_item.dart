import 'package:flutter/material.dart';
 
class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageURL;
  ProductItem(this.id, this.title, this.imageURL);
 
  @override
  Widget build(BuildContext context) {
    return GridTile(child: Image.network(imageURL));
  }
}
