import 'package:flutter/material.dart';

class cart extends StatefulWidget {
  cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          
        ],
      ),
      drawer: Drawer(),
    );
  }
}
