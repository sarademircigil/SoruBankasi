import 'package:flutter/material.dart';
import 'file:///C:/flutter-uygulama/sara_demircigil/lib/genelTasar%C4%B1m/fontTipi.dart';
import 'file:///C:/flutter-uygulama/sara_demircigil/lib/sayfalar/kategoriSec.dart';

import 'package:sara_demircigil/main.dart';

class SonucEkrani extends StatefulWidget {
  @override
  _SonucEkraniState createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    var data = [];
    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Column(
                children: [
                  Text(
                    data[0].toString(),
                    style: adSoyadStlye,
                  ),
                ],
              ),
            ),
            Text("Testiniz Bitti..",style: metin,),
            RaisedButton(
              child: Text("Anasayfa'ya Dön"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
            RaisedButton(
              child: Text("Başa Dön"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KategoriSec(),
                    settings: RouteSettings(arguments: data),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
