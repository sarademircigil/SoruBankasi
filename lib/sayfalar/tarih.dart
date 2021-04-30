import 'package:flutter/material.dart';
import 'file:///C:/flutter-uygulama/sara_demircigil/lib/soruTasar%C4%B1mVerisi/sorular.dart';
import '../soruTasarımVerisi/cevapIcon.dart';
import '../genelTasarım/fontTipi.dart';
import 'sonucEkranı.dart';

class TarihSayfasi extends StatefulWidget {
  @override
  _TarihSayfasiState createState() => _TarihSayfasiState();
}

class _TarihSayfasiState extends State<TarihSayfasi> {
  String adSoyad = "";

  List<Widget> secimler = [];
  TarihSorular test = TarihSorular();
  void buton(bool deger) {
    if (test.testBitti() == true) {
      test.testiSifirla();
      var data = [];
      data.add(adSoyad);

      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SonucEkrani(),
            settings: RouteSettings(
              arguments: data,
            ),
          ));
    } else {
      setState(() {
        test.getSoruYanit() == deger
            ? secimler.add(dogru)
            : secimler.add(yanlis);

        test.sonrakiSoru();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var data = [];
    data = ModalRoute.of(context).settings.arguments;
    adSoyad = data[0];
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Center(
                  child: Column(
                    children: [
                      Text(
                       adSoyad,
                        style: adSoyadStlye,
                      ),
                      Text(
                      "Toplam Soru Sayısı:10",
                        style:metin,
                      ),
                       ],
                  ),
                ),
              ),

              Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      test.getSoruMetni(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
              ),
              Wrap(
                children: secimler,
                alignment: WrapAlignment.start,
                runSpacing: 3,
                spacing: 3,
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: RaisedButton(
                            padding: EdgeInsets.all(12),
                            textColor: Colors.white,
                            color: Colors.red[400],
                            child: Icon(
                              Icons.thumb_down,
                              size: 30.0,
                            ),
                            onPressed: () {
                              buton(false);
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: RaisedButton(
                            padding: EdgeInsets.all(12),
                            textColor: Colors.white,
                            color: Colors.green[400],
                            child: Icon(Icons.thumb_up, size: 30.0),
                            onPressed: () {
                              buton(true);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
