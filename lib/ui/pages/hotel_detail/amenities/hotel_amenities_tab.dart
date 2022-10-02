
import 'package:bookingapp/model/hotel_model.dart';
import 'package:bookingapp/ui/pages/hotel_detail/amenities/amenities_item.dart';
import 'package:flutter/material.dart';

class HotelAmenitiesTab extends StatelessWidget {
  final List<Amenitie> amenities;
  const HotelAmenitiesTab({Key key,this.amenities}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView.builder(
        itemCount: amenities.length,
        itemBuilder: (context, index) => AmentitesItem(amenties: amenities[index]),
      ),
    );
  }
}
