import 'dart:io';

import 'package:bookingapp/bloc/hotel_bloc.dart';
import 'package:bookingapp/commons/theme.dart';
import 'package:bookingapp/ui/pages/hotel_search/home_page.dart';
import 'package:bookingapp/ui/utils/error_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  FlutterError.onError = (FlutterErrorDetails details) {
    FlutterError.dumpErrorToConsole(details);
    if (kReleaseMode) exit(1);
  };
  ErrorWidget.builder = (FlutterErrorDetails details) => CustomErrorWidget();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel Booking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        fontFamily: 'Avenir',
        cardColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: primarySwatch).copyWith(secondary: accentColor),
      ),
      home: ChangeNotifierProvider(
        create: (_) => HotelBloc()..retrieveHotels(),
        child: HotelSearchPage(),
      ),
    );
  }
}


