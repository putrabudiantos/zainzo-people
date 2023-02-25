import 'package:flutter/material.dart';
import 'Pages/pages.dart';

class CustomRoute {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) {
      switch (settings.name) {
        case "Page1":
          // ignore: prefer_const_constructors
          return Page1();
        case "Page2":
          // ignore: prefer_const_constructors
          return Page2();
        case "Page3":
          // ignore: prefer_const_constructors
          return Page3();
      }

      // ignore: prefer_const_constructors
      return UnderConstruction();
    });
  }
}
