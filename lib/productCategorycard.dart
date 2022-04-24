import 'package:flutter/material.dart';

class ProductCategoryCard extends StatefulWidget {
  String image = "";
  String Title = "";
  ProductCategoryCard(String img, String tit) {
    image = img;
    Title = tit;
  }

  @override
  State<ProductCategoryCard> createState() =>
      ProductCategoryCardState(image, Title);
}

class ProductCategoryCardState extends State<ProductCategoryCard> {
  String image = "";
  String Title = "";
  ProductCategoryCardState(String img, String tit) {
    image = img;
    Title = tit;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      //retrns countainer for the categor on the top
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueGrey, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      padding: EdgeInsets.all(35),
      margin: EdgeInsets.all(5),
      width: 170,
      height: 200,
      child: Column(
        children: [
          Image(
            image: NetworkImage(image),
            width: 100,
            height: 100,
          ),
          Text(
            Title,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
