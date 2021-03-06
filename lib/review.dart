import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String path_image;
  String nombre_usuario;
  String detalles;
  String comentario;
  Review(this.path_image,this.nombre_usuario,this.detalles,this.comentario);

  @override
  Widget build(BuildContext context) {


    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
          nombre_usuario,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 17.0
          )
      ),
    );

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
          detalles,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              color: Color(0xFFa3a5a7)
          )
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
          comentario,
          textAlign: TextAlign.left,
          style: TextStyle(
              fontFamily: "Lato",
              fontSize: 13.0,
              fontWeight: FontWeight.w900
          )
      ),
    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(path_image))),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfo,
        userComment
      ],
    );

    return Row(
      children: <Widget>[photo,userDetails],
    );
  }
}
