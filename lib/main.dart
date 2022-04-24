import 'package:flutter/material.dart';
import 'package:freshin/cirtuse.dart';
import 'package:freshin/mainItems.dart';
import 'drawer.dart';
import 'vegitables.dart';
import 'eggplanet.dart';
import 'Cart.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // when adding more than lib it will help in updating them if here was update
  runApp(MaterialApp(
    title: "FreshIn",
    initialRoute: "/homepage",
    routes: {
      "/homepage": (context) => MyApp(),
      "/vegitables": (context) => vegitables(),
      "/Cirtuse": (context) => Cirtuse(),
      "/eggplant": (context) => eggplant(),
      "/cart": (context) => cart(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;
    Mydrawer Drawer = Mydrawer();
    mainItems items = mainItems();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(
                    context,
                    '/cart',
                  );
                });
              },
              icon: Icon(
                Icons.shopping_bag,
                color: Colors.teal,
              ))
        ],
      ),
      body: Container(
        color: Colors.white,
        child: items,
      ),
      drawer: Drawer,
    );
  }
}
