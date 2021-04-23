import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Pagina Error"),
        ),
        body: Container(
          child: Text("Error"),
        ),
      ),
    );
  }
}
