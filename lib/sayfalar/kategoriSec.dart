import 'package:flutter/material.dart';
import 'file:///C:/flutter-uygulama/sara_demircigil/lib/genelTasar%C4%B1m/fontTipi.dart';
import 'package:sara_demircigil/main.dart';
import 'file:///C:/flutter-uygulama/sara_demircigil/lib/kategoriTasar%C4%B1mVerisi/myContainer.dart';
import 'file:///C:/flutter-uygulama/sara_demircigil/lib/sayfalar/tarih.dart';

class KategoriSec extends StatefulWidget {
  @override
  _KategoriSecState createState() => _KategoriSecState();
}

class _KategoriSecState extends State<KategoriSec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: KategoriSecPage(),
    );
  }
}

class KategoriSecPage extends StatelessWidget {
  String adSoyad = "";
  @override
  Widget build(BuildContext context) {
    var data = [];
    data = ModalRoute.of(context).settings.arguments;
    adSoyad = data[0];
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Column(
                children: [
                  Text(
                    "Hoş Geldiniz " + adSoyad,
                    style: adSoyadStlye,
                  ),
                  Text("Sınava Başlamak İçin Başla Botununa Tıklayınız",style:metin,), ],
              ),
            ),


            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TarihSayfasi(),
                                settings: RouteSettings(arguments: data),
                            ),
                        );
                      },
                      child: Text('Başla'),
                    ),
                  ),
                ),

              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: MyContainer(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                            settings: RouteSettings(arguments: data),
                          ),
                        );
                      },
                      child: Text("Anasayfa'ya Dön"),
                    ),
                  ),
                ),

              ],
            ))
          ],
        ),
      ),
    );
  }
}
