import 'package:flutter/material.dart';
import 'package:tripadvisor_flutter/descripcion_place.dart';
import 'package:tripadvisor_flutter/header_appbar.dart';
import 'package:tripadvisor_flutter/review_list.dart';

class HomeTrips extends StatelessWidget {
  String descriptionDummy = "Este es el mejor lugar que puedes visitar en "
      "tus vacaciones de verano, ven y disfruta de la mejor "
      "experiencia!";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescripcionPlace("Guayaquil", 4, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppbar()
      ],
    );
  }
}
