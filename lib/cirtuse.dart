import 'package:flutter/material.dart';
import 'productCard.dart';
import 'drawer.dart';

class Cirtuse extends StatefulWidget {
  Cirtuse({Key? key}) : super(key: key);

  @override
  State<Cirtuse> createState() => _CirtuseState();
}

class _CirtuseState extends State<Cirtuse> {
  ProductCard Lemon = new ProductCard(
      "https://www.pngall.com/wp-content/uploads/2016/05/Lemon-Free-Download-PNG.png",
      "Lemon",
      22);
  @override
  Widget build(BuildContext context) {
    Mydrawer Drawer = Mydrawer();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [Lemon],
          )
        ],
      ),
      drawer: Drawer,
    );
  }
}
