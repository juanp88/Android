import 'package:flutter/material.dart';
import 'package:flutter_integration/pages/error_page.dart';
import 'package:flutter_integration/pages/home.dart';
import 'package:flutter_integration/pages/splash.dart';
import 'package:flutter_integration/pages/webView.dart';
import 'package:webview_flutter/webview_flutter.dart';

Map<String, WidgetBuilder> generateRoutes() {
  return {
    'home': (BuildContext context) => Home(),
    'error': (BuildContext context) => ErrorPage(),
    'splash': (BuildContext context) => SplashScreen(),
    'webview': (BuildContext context) => WebViewExample()
  };
}
