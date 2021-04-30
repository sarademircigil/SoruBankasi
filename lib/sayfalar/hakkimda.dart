

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Hakkimda extends StatefulWidget {
  @override
  _HakkimdaState createState() => _HakkimdaState();
}

class _HakkimdaState extends State<Hakkimda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text("Bu uygulama Sara DEMİRCİGİL tarafından yapılmıştır."),
          RaisedButton(onPressed: (){Navigator.pop(context);}, child: Text('Anasayfa'),)
          ],
      ),
    ),
    );
  }
}
