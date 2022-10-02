import 'package:bookingapp/model/hotel_model.dart';
import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class AmentitesItem extends StatelessWidget {
 final Amenitie amenties;
 const AmentitesItem({Key key, this.amenties}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          leading: Image.network(amenties.imageUrl),
          title: Text(amenties.name)
      ),
    );
  }
}
