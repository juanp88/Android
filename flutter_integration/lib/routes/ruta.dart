import 'package:flutter/material.dart';
import 'package:flutter_integration/pages/error_page.dart';
import 'package:flutter_integration/pages/home.dart';

Map<String, WidgetBuilder> generateRoutes() {
  return {
    'home': (BuildContext context) => Home(),
    'error': (BuildContext context) => ErrorPage(),
  };
}
