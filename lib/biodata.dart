import 'package:flutter/material.dart';




class Biodata extends StatelessWidget {
  final String title = "Aku";
  final String location = "Semarang, Jawa Tengah";
  final String describtion = 
  '''Aku adalah seorang mahasiswa di Politeknik Negeri Semarang,umurku sekarang 19 Tahun aku merupakan
  anak kedua dari dua bersodara,Aku bertempat tinggal di Semarang Jawa Tengah, Moto hidupku jalani aja.''';

@override 
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Aku"),
    ),
    body: Column( 
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
        Image.asset(
          "image/Its me.jpeg",
           height: 250,
           width: 390,
           fit: BoxFit.fill, 
           ),
        Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  this.title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  this.location,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  )
                ),
                Text(
                  this.describtion,
                )               
              ],
             ),
        Row(
          children: [
            Container(
              width: 15,
            ),            
          ],
        )
      ]
    )
  );
}
}
