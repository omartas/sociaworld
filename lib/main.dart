import 'package:flutter/material.dart';
import 'package:sociaworld/gonderikarti.dart';
import 'package:sociaworld/profilSayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  var arkaplanrengi = Colors.grey[100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: arkaplanrengi,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              showModalBottomSheet(context: context, builder: (BuildContext context)=>duyuru());
            },
            icon: Icon(
              Icons.notifications,
              color: Colors.purple,
              size: 32,
            ),
          ),
        ],
        centerTitle: true,
        title: Text(
          "Sociaworld",
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        backgroundColor: arkaplanrengi,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 32,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: arkaplanrengi,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2, offset: Offset(0, 3), color: Colors.grey)
              ],
            ),
            height: 100, //MediaQuery.of(context).size.height/7,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                profilKartiOlustur(
                  "Guts",
                  "http://postkolik.com/Images/News/kentaro-miuranin-olumunden-sonra-berserk-yok-satiyor-vCa6x.jpeg",
                  "Ayşe Gül",
                  "https://i.ytimg.com/vi/tGpTpVyI_OQ/maxresdefault.jpg",
                ),
                profilKartiOlustur(
                  "Bilbo",
                  "https://i.ytimg.com/vi/tGpTpVyI_OQ/maxresdefault.jpg",
                  "Bruce Willis",
                  "https://i.ytimg.com/vi/tGpTpVyI_OQ/maxresdefault.jpg",
                ),
                profilKartiOlustur(
                  "Baggins",
                  "",
                  "isimsoyad",
                  "kapakfotolinki",
                ),
                profilKartiOlustur(
                  "Merry",
                  "",
                  "",
                  "https://i.ytimg.com/vi/tGpTpVyI_OQ/maxresdefault.jpg",
                ),
                profilKartiOlustur(
                  "Pippin",
                  "",
                  "",
                  "",
                ),
                profilKartiOlustur(
                  "Frodo",
                  "",
                  "",
                  "",
                ),
                profilKartiOlustur(
                  "Sam",
                  "",
                  "",
                  "",
                ),
              ],
            ),
          ),
          GonderiKarti(
            fotografAciklamasi: "Sadece kılıcımın tadına bakacaklar..",
            resimYolu:
                "http://postkolik.com/Images/News/kentaro-miuranin-olumunden-sonra-berserk-yok-satiyor-vCa6x.jpeg",
            kullaniciAdi: "Berserker",
            ppyolu:
                "http://postkolik.com/Images/News/kentaro-miuranin-olumunden-sonra-berserk-yok-satiyor-vCa6x.jpeg",
            tarih: "12.12.2022",
          ),
          GonderiKarti(
            fotografAciklamasi:
                "PulpFiction Çekimlerinden .. Yakında Sinemalarda",
            resimYolu: "https://i.ytimg.com/vi/tGpTpVyI_OQ/maxresdefault.jpg",
            kullaniciAdi: "Uma Thurman",
            ppyolu: "http://postkolik.com/Images/News/kentaro-miuranin-olumunden-sonra-berserk-yok-satiyor-vCa6x.jpeg",
            tarih: "05.12.1969",
          ),
          GonderiKarti(
            fotografAciklamasi: "Emaneti elden bırakmamak gerek",
            resimYolu:
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS65cAbwIqhNnOJYQk8VuMsQd0vB5zUl8t8A&usqp=CAU",
            kullaniciAdi: "CONTRAVOLTA",
            ppyolu:
                "http://t0.gstatic.com/licensed-image?q=tbn:ANd9GcSN5FuFdUkFPvux4KWr39eaSbrNgaRBsXCTXVKM8vIvMb_u-quuTiiCb9KB0nj9",
            tarih: "09.11.1969",
          ),
          GonderiKarti(
            resimYolu:
                "http://postkolik.com/Images/News/kentaro-miuranin-olumunden-sonra-berserk-yok-satiyor-vCa6x.jpeg",
            kullaniciAdi: "kullaniciAdi",
            fotografAciklamasi: "fotografAciklamasi",
            ppyolu:
                "http://postkolik.com/Images/News/kentaro-miuranin-olumunden-sonra-berserk-yok-satiyor-vCa6x.jpeg",
            tarih: "tarih",
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},backgroundColor: Colors.purple[300],child: Icon(Icons.add_a_photo,color: Colors.white,),),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimYolu,
      String isimSoyad, String kapakResimLinki) {
    return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => ProfilSayfasi(
                        isimSoyad: isimSoyad,
                        kapakResimLinki: kapakResimLinki,
                        kullaniciAdi: kullaniciAdi,
                        ppyolu: resimYolu,
                      )));
        },
        child: Padding(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              resimYolu,
                            ),
                            fit: BoxFit.contain),
                        color: Colors.white,
                        border: Border.all(width: 2, color: Colors.grey),
                        borderRadius: BorderRadius.circular(35),
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 2, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(fontSize: 15, color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class duyuru   extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildDuyuru("Berserk seni takip etti","3 dk önce"),
        buildDuyuru("canpolat seni takip etti","5 dk önce"),
        buildDuyuru("theRock seni takip etti","15 dk önce"),
        buildDuyuru("hadise seni takip etti","2 saat önce"),

      ],
    );
  }

  Widget buildDuyuru(String mesaj,String gecenSure) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Text(mesaj,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
            Text(gecenSure,style: TextStyle(fontSize: 15)),
          ],
          ),
    );
  }
}
