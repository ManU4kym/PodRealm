import 'package:flutter/material.dart';
import 'package:pod_realm/pages/home_page.dart';
import 'package:pod_realm/pages/podcast_diectory.dart';

class RouteGenerator {
  static const String homePage = '/';
  static const String podDirectory = '/podDirectory';

  RouteGenerator._(){}

  static Route<dynamic> generateRoute (RouteSettings settings){
    switch(settings.name){
      case homePage:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );
      case podDirectory:
        return MaterialPageRoute(
          builder: (_) => const PodDirectory(),
        );
      default:
        throw const FormatException("Route not found");
    }
  }
}
class RouteException implements Exception {
  final String message;
  const RouteException( this.message);
}
