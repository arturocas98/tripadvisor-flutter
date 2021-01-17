import 'package:flutter/material.dart';

class CardImage extends StatelessWidget{
  String path_image = "assets/img/guayaquil.jpg";
  CardImage(this.path_image);
  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350.0,
      width: 250.0 ,
      margin: EdgeInsets.only(
        top:80.0,
        left:20.0
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(path_image)
        ),
        borderRadius: BorderRadiusDirectional.all(Radius.circular(10.0)),
        shape: BoxShape.rectangle,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black,
            blurRadius: 15.0,
            offset: Offset(0.0,7.0)
          )

        ]
      ),
    );
    return card;
  }
}