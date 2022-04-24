import 'package:flutter/material.dart';
import 'drawer.dart';
import 'productCategorycard.dart';
import 'productCard.dart';

class vegitables extends StatefulWidget {
  @override
  State<vegitables> createState() => vegitablesState();
}

class vegitablesState extends State<vegitables> {
  @override
  Widget build(BuildContext context) {
    Mydrawer Drawer = Mydrawer();
    ProductCategoryCard eggplant = new ProductCategoryCard(
        "https://www.pngall.com/wp-content/uploads/2016/04/Eggplant-Free-Download-PNG.png",
        "eggplant");
    ProductCategoryCard citrus = new ProductCategoryCard(
        "https://www.pngall.com/wp-content/uploads/12/Grapefruit-PNG-Image-File.png",
        "citrus");
    ProductCategoryCard cilipeppers = new ProductCategoryCard(
        "https://www.pngall.com/wp-content/uploads/8/Red-Chilli-Pepper-PNG-File.png",
        "peppers");
    ProductCategoryCard onions = new ProductCategoryCard(
        "https://www.pngall.com/wp-content/uploads/2016/03/Onion-Free-Download-PNG.png",
        "onions");
    /***************************************main products***************************** */
    ProductCard beet = new ProductCard(
        "https://www.pngall.com/wp-content/uploads/2/Rhubarb.png", "beet", 7.5);
    ProductCard Broccoli = new ProductCard(
        "https://www.pngall.com/wp-content/uploads/2016/05/Broccoli-Free-Download-PNG.png",
        "Broccoli",
        22);
    ProductCard cabbage = new ProductCard(
        "https://www.pngall.com/wp-content/uploads/2016/05/Cabbage-Free-Download-PNG.png",
        "cabbage",
        20);
    ProductCard capocha = new ProductCard(
        "https://www.pngall.com/wp-content/uploads/2016/05/Cabbage-Free-PNG-Image.png",
        "capocha",
        8);
    ProductCard carrot = new ProductCard(
        "https://www.pngall.com/wp-content/uploads/2016/04/Carrot-Free-Download-PNG.png",
        "carrot",
        8.5);
    ProductCard Zucchini = new ProductCard(
        "https://www.pngall.com/wp-content/uploads/11/Zucchini-PNG-Photo.png",
        "Zucchini",
        14);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(
                        context,
                        '/Cirtuse',
                      );
                    });
                  },
                  child: citrus,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(
                        context,
                        '/eggplant',
                      );
                    });
                  },
                  child: eggplant,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(
                        context,
                        '/cilipeppers',
                      );
                    });
                  },
                  child: cilipeppers,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(
                        context,
                        '/onions',
                      );
                    });
                  },
                  child: onions,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [beet, Broccoli],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [capocha, carrot],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [cabbage, Zucchini],
                ),
              ],
            ),
          ),
        ],
      ),
      drawer: Drawer,
    );
  }
}
