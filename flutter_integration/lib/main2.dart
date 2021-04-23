import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_integration/pages/error_page.dart';
import 'package:flutter_integration/routes/ruta.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tabot',
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: generateRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => ErrorPage());
      },
    );
  }
}
