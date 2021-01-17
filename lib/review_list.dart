import 'package:flutter/material.dart';
import 'package:tripadvisor_flutter/review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/img/people.jpg", "Edwin Arturo", "1 review 5 fotos", "Este es un lugar turistico intersante"),
        Review("assets/img/people_2.jpg", "Angela Wiedenman", "7 review 10 fotos", "Buen ambiente para venir con la familia"),
        Review("assets/img/people_3.jpg", "Mr robot", "10 review 10 fotos", "Impresionante sitio"),

      ],
    );
  }
}