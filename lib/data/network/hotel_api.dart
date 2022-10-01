import 'dart:async';
import 'dart:convert';
import 'package:bookingapp/model/hotel_model.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/services.dart';

class HotelApi {
  final String _baseUrl = 'https://raw.githubusercontent.com';
  final String _endPoint =
      '/marxmind/booking/main/server/hotels.json';

  Future<List<HotelModel>> getHotels() async {
    //internet
    var url = Uri.parse(_baseUrl + _endPoint);
    final data = await http.get(url);
    //print("check:");
    //print(data.body);
    //print("end check");
    //local
    //String response = await rootBundle.loadString('data/hotels.json');
    //print("Json: " + response);
    //final data = await json.decode(response);
    //print("Json: " + data);

    final responseList = json.decode(data.body);
    return [for (final hotel in responseList) HotelModel.fromJson(hotel)];
  }
}
