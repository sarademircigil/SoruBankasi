

import 'package:flutter/material.dart';

class Hata extends StatefulWidget {
  @override
  _HataState createState() => _HataState();
}

class _HataState extends State<Hata> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               child: Icon(Icons.warning, size: 30.0,color: Colors.red[900],),

             ),
             Text("Adınız ve Soyadınız en az 9 karakter olmalıdır."),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 16.0),
             child: RaisedButton(child:Text("Anasayfaya Dön"),
                 onPressed: (){
               Navigator.pop(context);
                 }
                 ),
           )
           ],
         ),
       ),
        )

    );
  }
}
