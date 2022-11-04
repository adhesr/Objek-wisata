import 'package:flutter/material.dart';




class Home extends StatelessWidget {
  final String title = "Gunung Ungaran";
  final String location = "Ungaran, Jawa Tengah";
  final String describtion = 
  '''adalah gunung berapi bertipe stratovolcano yang terletak di Ungaran, 
Kabupaten Semarang, Jawa Tengah dan memiliki ketinggian 2.050 meter.''';

@override 
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("Objek Wisata"),
    ),
    body: Column( 
      mainAxisAlignment: MainAxisAlignment.start,
      children:[
        Image.asset(
          "image/Ungaran.jpeg",
           height: 250,
           width: 412,
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
