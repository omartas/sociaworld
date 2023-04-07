import 'package:flutter/material.dart';

class GonderiKarti extends StatelessWidget {
  final String resimYolu,kullaniciAdi,fotografAciklamasi,ppyolu,tarih;

  GonderiKarti(
      {
        required this.resimYolu,
        required this.kullaniciAdi,
        required this.fotografAciklamasi,
        required this.ppyolu,
        required this.tarih,
      });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Material(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  ppyolu)),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    SizedBox(width: 12,),
                    Column(
                      children: [
                        Text(
                          kullaniciAdi,
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Text(tarih),
                      ],
                    ),
                  ],),
                  Icon(
                    Icons.menu,
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  fotografAciklamasi,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
              Container(
                height: 200,
                child: Image.network(
                    resimYolu,fit: BoxFit.cover),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.comment,)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.share,)),
                ],
              )
            ],
          ),
          padding: EdgeInsets.all(15),
          height: 380,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
