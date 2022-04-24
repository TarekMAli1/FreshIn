import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ProductCard extends StatefulWidget {
  String image = "";
  String Title = "";
  double price = 0.0;
  ProductCard(String img, String tit, double price_Value) {
    image = img;
    Title = tit;
    price = price_Value;
  }
  @override
  State<ProductCard> createState() => ProductCardState(image, Title, price);
}

class ProductCardState extends State<ProductCard> {
  String image = "";
  String Title = "";
  double price = 0.0;
  ProductCardState(String img, String tit, price_Value) {
    image = img;
    Title = tit;
    price = price_Value;
  }
  double needed_amount = 0.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      //retrns countainer for the categor on the top
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      padding: EdgeInsets.all(35),
      margin: EdgeInsets.all(5),
      width: 182,
      height: 290,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
          Text(
            price.toString() + "/kg",
            style: TextStyle(fontSize: 12),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      needed_amount += price;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    color: Colors.blueAccent,
                  )),
              IconButton(
                  onPressed: () {
                    setState(() {
                      (needed_amount > 0.0)
                          ? needed_amount -= price
                          : needed_amount = 0.0;
                    });
                  },
                  icon: Icon(
                    Icons.remove,
                    color: Colors.blueAccent,
                  )),
            ],
          ),
          Text(
            (needed_amount == 0.0) ? "" : needed_amount.toString(),
            style: TextStyle(fontSize: 20, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
