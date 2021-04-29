import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //capa inferior, donde se muestran los botones
          Container(
            child: Container(
              alignment: Alignment.bottomCenter,
              //color: Colors.white,
              child: ButtonBar(
                alignment: MainAxisAlignment.center,
                children: [
                  IconButton(icon: Icon(Icons.settings), onPressed: () {}),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                      ),
                      onPressed: () {},
                      child: Icon(Icons.mic_rounded)),
                  IconButton(icon: Icon(Icons.keyboard), onPressed: () {})
                ],
              ),
            ),
          ),
          //capa superior donde se muestrean los mensajes
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Text("Hola! Soy Tabot"),
            ),
          )
        ],
      ),
    );
  }
}
