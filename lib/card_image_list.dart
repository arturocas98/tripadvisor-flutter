import 'package:flutter/material.dart';
import 'package:tripadvisor_flutter/card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/guayaquil.jpg"),
          CardImage("assets/img/guayaquil_2.jpg"),
          CardImage("assets/img/guayaquil_3.jpg"),
        ],
      ),
    );
  }
}