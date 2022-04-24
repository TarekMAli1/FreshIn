import 'package:flutter/material.dart';

class logo extends StatefulWidget {
  @override
  State<logo> createState() => _logoState();
}

class _logoState extends State<logo> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 150,
        backgroundImage: NetworkImage(
            "https://scontent.fcai17-1.fna.fbcdn.net/v/t39.30808-6/242925500_418735086336766_1724559556735536562_n.png?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeFlWPX9pEA3YL2QeLR9iauP4cUECxcth-rhxQQLFy2H6nhPHcXCkqLT5OX0yoonqhwPzCIdRi8aQZJuWpYtqE57&_nc_ohc=bfMEBzN1Q00AX9DEDKE&tn=9iNZGfQapw8NLqOt&_nc_ht=scontent.fcai17-1.fna&oh=00_AT9R3nfQv-EQ69rgz40IGB8Mp6yo6yQB2-kDeJalr3IB1Q&oe=6268536B"),
      ),
    );
  }
}
