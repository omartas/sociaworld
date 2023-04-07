import 'package:flutter/material.dart';
import 'package:sociaworld/gonderikarti.dart';

class ProfilSayfasi extends StatelessWidget {
  final String isimSoyad,kullaniciAdi,kapakResimLinki,ppyolu;

  const ProfilSayfasi({super.key, required this.isimSoyad, required this.kullaniciAdi, required this.kapakResimLinki, required this.ppyolu});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 230,
                //color: Colors.yellow,
              ),
              Container(
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                      image: NetworkImage(kapakResimLinki),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                left: 20,
                top: 110,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              ppyolu),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.blue,
                      border: Border.all(width: 2, color: Colors.white)),
                ),
              ),
              Positioned(
                top: 190,
                left: 145,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      isimSoyad,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    Text(
                      kullaniciAdi,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 130,
                right: 15,
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                    border: Border.all(width: 2, color: Colors.white),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.circle,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "Takip Et",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ))
            ],
          ),
          SizedBox(height: 20,),
          Container(
            height: 75,
            color: Colors.grey.withOpacity(0.1),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                sayac("20K","Takipçi"),
                sayac("500","Takip"),
                sayac("75","Paylaşım"),
              ],
            ),
          ),
          GonderiKarti(
            fotografAciklamasi: "Gölgenle savaşamazsın.",
            resimYolu:
            "http://postkolik.com/Images/News/kentaro-miuranin-olumunden-sonra-berserk-yok-satiyor-vCa6x.jpeg",
            kullaniciAdi: "Berserker",
            ppyolu:
            "http://postkolik.com/Images/News/kentaro-miuranin-olumunden-sonra-berserk-yok-satiyor-vCa6x.jpeg",
            tarih: "12.12.2022",
          ),
        ],
      ),
    );
  }

  Column sayac(String baslik,String altbaslik) {
    return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    baslik,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(altbaslik),
                ],
              );
  }
}
