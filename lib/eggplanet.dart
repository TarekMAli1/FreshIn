import 'package:flutter/material.dart';
import 'productCard.dart';
import 'drawer.dart';

class eggplant extends StatefulWidget {
  eggplant({Key? key}) : super(key: key);

  @override
  State<eggplant> createState() => _eggplantState();
}

class _eggplantState extends State<eggplant> {
  ProductCard black_eggplant = new ProductCard(
      "https://www.pngall.com/wp-content/uploads/2016/06/102216626_O.png",
      "black eggplant",
      22);
  ProductCard eggplant = new ProductCard(
      "https://www.pngall.com/wp-content/uploads/2016/06/Aubergine-PNG-HD.png",
      "eggplant",
      22);
  ProductCard white_eggplant = new ProductCard(
      "https://www.pngall.com/wp-content/uploads/2016/06/Aubergine-PNG-Clipart.png",
      "white eggplant",
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
            children: [eggplant, black_eggplant],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [white_eggplant],
          )
        ],
      ),
      drawer: Drawer,
    );
  }
}
