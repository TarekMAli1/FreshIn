import 'package:flutter/material.dart';
import 'mycard.dart';
import 'logo.dart';

class mainItems extends StatefulWidget {
  @override
  State<mainItems> createState() => _mainItemsState();
}

class _mainItemsState extends State<mainItems> {
  @override
  Widget build(BuildContext context) {
    logo Logo = new logo();
    mycard vegitables = new mycard(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4wZwsqltBQTOxiM2mSl0aW9tmSbvr6ngujgQ3gRp27RwmP9CPS9uX-Rbk3gvoKJaApuI&usqp=CAU",
        "vegitables",
        100,
        100);
    mycard fruits = new mycard(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSENLBDVBMLTI4LM4zvZYWDcFqzVLVLIp3Geg&usqp=CAU",
        "fruits",
        100,
        100);
    mycard bekary = new mycard(
        "https://www.pngall.com/wp-content/uploads/2016/03/Bread-PNG-4.png",
        "bekary",
        100,
        100);
    mycard dairy = new mycard(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHG7DxahlmXb-NddfgoK-qAH2XPTOlx2MdnA&usqp=CAU",
        "dairy",
        100,
        100);
    mycard poultry = new mycard(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjMEDFcqb2e1iG0hwf3d6c2NvpD9CWfewSpQ&usqp=CAU",
        "poultry",
        100,
        100);
    return ListView(
      children: [
        Logo,
        InkWell(
          onTap: () {
            setState(() {
              Navigator.pushNamed(
                context,
                '/vegitables',
              );
            });
          },
          child: vegitables,
        ),
        InkWell(
          onTap: () {
            setState(() {});
          },
          child: fruits,
        ),
        InkWell(
          onTap: () {
            setState(() {});
          },
          child: bekary,
        ),
        InkWell(
          onTap: () {
            setState(() {});
          },
          child: dairy,
        ),
        InkWell(
          onTap: () {
            setState(() {});
          },
          child: poultry,
        ),
      ],
    );
  }
}
