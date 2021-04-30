import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'file:///C:/flutter-uygulama/sara_demircigil/lib/genelTasar%C4%B1m/fontTipi.dart';
import 'file:///C:/flutter-uygulama/sara_demircigil/lib/sayfalar/hakkimda.dart';
import 'file:///C:/flutter-uygulama/sara_demircigil/lib/sayfalar/hata.dart';
import 'file:///C:/flutter-uygulama/sara_demircigil/lib/sayfalar/kategoriSec.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String adSoyad = "";
  void kontrol() {
    if (adSoyad.length >= 9) {
      var data = [];
      data.add(adSoyad);
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => KategoriSec(),
            settings: RouteSettings(arguments: data)),
      );
    } else {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Hata()));
    }
  }

  void _adSoyadKayit(String text) {
    setState(() {
      adSoyad = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool butonpasif = true;

    if (adSoyad.length >= 9) {
      butonpasif = false;
    } else {
      butonpasif = true;
    }

    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Soru Bankası",style:girisStyle),
            Text("Adınız ve Soyadınız",style:adSoyadStlye,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Lütfen Adınızı ve Soyadınızı Giriniz",
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
                onChanged: (text) {
                  _adSoyadKayit(text);
                },
              ),
            ),
            RaisedButton(
              child: Text("Giriş Yap"),
              onPressed: butonpasif ? null : kontrol,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Hakkimda()));
              },
              child: Text("Hakkımda"),
            ),
          ],
        ),
      ),
    );
  }
}
