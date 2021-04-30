class Soru {
  String soruMetni;
  bool soruYaniti;

  Soru({this.soruMetni, this.soruYaniti});
}

int _soruIndex = 0;

class TarihSorular {
  List<Soru> _soruBankasi = [
    Soru(
        soruMetni:
            "1.Mezopotamya Seyhan ve Ceyhan nehirlerinin arasındaki bölgedir.",
        soruYaniti: false),
    Soru(
        soruMetni:
            " 2.Ön Asya’da siyasi birliği kuran ilk medeniyet Perslerdir.",
        soruYaniti: true),
    Soru(
        soruMetni:
            " 3.Kast sistemi Hindistan’da milli birlik ve beraberlik duygusunu pekiştirmiştir.",
        soruYaniti: false),
    Soru(
        soruMetni:
            " 4.Sümerler MÖ 3000’de yazıyı bularak Tarih öncesi çağları başlatmışlardır.",
        soruYaniti: false),
    Soru(
        soruMetni:
            " 5.Kâğıt, mürekkep ve matbaa 751 Talas Savaşıyla Çin dışına yayılmıştır. ",
        soruYaniti: true),
    Soru(
        soruMetni: " 6.İyon medeniyeti tarihi “Kral Yolu” nu oluşturmuştur.",
        soruYaniti: false),
    Soru(
        soruMetni:
            "7.İbraniler Musevilik Dinini milli bir din haline getirmişlerdir.",
        soruYaniti: true),
    Soru(
        soruMetni:
            "8.Hititler “Anal” adını verdikleri yıllıklarla tarih yazıcılığını başlatmışlardır. ",
        soruYaniti: true),
    Soru(
        soruMetni: "9.Urartular Aşağı Mezopotamya’da yaşamışlardır. ",
        soruYaniti: false),
    Soru(
        soruMetni:
            "10.Frigler’den kalan en önemli eserlerden birisi de Midas’ın mezarıdır. ",
        soruYaniti: true),
  ];
  String getSoruMetni() {
    return _soruBankasi[_soruIndex].soruMetni;
  }

  bool getSoruYanit() {
    return _soruBankasi[_soruIndex].soruYaniti;
  }

  void sonrakiSoru() {
    if (_soruIndex + 1 < _soruBankasi.length) {
      _soruIndex++;
    }
  }

  bool testBitti() {
    if (_soruIndex + 1 >= _soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }

  void testiSifirla() {
    _soruIndex = 0;
  }
}
