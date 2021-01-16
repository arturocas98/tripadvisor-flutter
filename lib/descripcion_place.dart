import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DescripcionPlace extends StatelessWidget {
  String nombre_sitio;
  int numero_estrellas;
  String descripcion_text;

  DescripcionPlace(
      this.nombre_sitio, this.numero_estrellas, this.descripcion_text);

  @override
  Widget build(BuildContext context) {
    final descripcion = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descripcion_text,
        style: TextStyle(
            fontSize: 16,
            fontFamily: "Lato",
            fontWeight: FontWeight.bold,
            color: Color(0xFF56575a)),
        textAlign: TextAlign.left,
      ),
    );

    final start = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(Icons.star, color: Color(0XFFf2C611)),
    );
    //estrella vacia
    final start_half = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(Icons.star_half, color: Color(0XFFf2C611)),
    );
    //borde de estrella
    final start_border = Container(
      margin: EdgeInsets.only(top: 323.0, right: 3.0),
      child: Icon(Icons.star_border, color: Color(0XFFf2C611)),
    );
    final title_starts = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            nombre_sitio,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 30,
              fontWeight: FontWeight.w900,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            start,
            start,
            start,
            start,
            start_half,
          ],
        ),
      ],
    );
    return Column(
      children: <Widget>[title_starts, descripcion],
    );
    //return title_starts;
  }
}
