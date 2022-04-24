import 'package:flutter/material.dart';

class Mydrawer extends StatefulWidget {
  Mydrawer({Key? key}) : super(key: key);

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.fromLTRB(20, 90, 20, 0),
        children: [
          Center(
            child: Text(
              "Wellcome",
              style: TextStyle(
                fontSize: 15,
                color: Colors.blueGrey,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.login,
              color: Colors.blueGrey,
            ),
            title: InkWell(
              onTap: () {
                setState(() {});
              },
              child: Text(
                "login/ registeration",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Divider(
            height: 10,
            color: Colors.blueGrey,
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.blueGrey,
            ),
            title: InkWell(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, "/homepage");
                });
              },
              child: Text(
                "Home",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.message,
              color: Colors.blueGrey,
            ),
            title: InkWell(
              onTap: () {
                setState(() {});
              },
              child: Text(
                "inbox",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.blueGrey,
            ),
            title: InkWell(
              onTap: () {
                setState(() {});
              },
              child: Text(
                "call us",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.blueGrey,
            ),
            title: InkWell(
              onTap: () {
                setState(() {});
              },
              child: Text(
                "mail us ",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.share,
              color: Colors.blueGrey,
            ),
            title: InkWell(
              onTap: () {
                setState(() {});
              },
              child: Text(
                "share",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
