import 'package:flutter/material.dart';

class mycard extends StatefulWidget {
  String image = "";
  String Title = "";
  double Width = 0;
  double Length = 0;
  mycard(String img, String tit, double wid, double len) {
    image = img;
    Title = tit;
    Width = wid;
    Length = len;
  }

  @override
  State<mycard> createState() => mycardState(image, Title, Width, Length);
}

class mycardState extends State<mycard> {
  String image = "";
  String Title = "";
  double Width = 0;
  double Length = 0;
  mycardState(String img, String tit, double wid, double len) {
    image = img;
    Title = tit;
    Width = wid;
    Length = len;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.teal, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      child: ListTile(
        leading: Image(
          image: NetworkImage(image),
          width: Width,
          height: Length,
        ),
        trailing: Text(
          Title,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
