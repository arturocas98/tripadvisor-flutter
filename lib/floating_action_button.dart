import 'package:flutter/material.dart';

class FloatingActionButtonElement extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButton();
  }
}

class _FloatingActionButton extends State<FloatingActionButtonElement>{
  bool is_presed = false;
  void onPressedFav(){

      Scaffold.of(context).showSnackBar(SnackBar(
        content: Text("Agregaste a tus favoritos"),
      ));
      setState(() {
        this.is_presed = true;
      });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini:true,
      tooltip: "Favorito",
      onPressed:onPressedFav,
      child: this.is_presed ?Icon(Icons.favorite):Icon(Icons.favorite_border),
    );
  }
}