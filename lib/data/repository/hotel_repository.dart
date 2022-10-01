import 'dart:async';

import 'package:bookingapp/model/hotel_model.dart';

abstract class HotelRepository {
  Future<List<HotelModel>> fetchHotels();
}
