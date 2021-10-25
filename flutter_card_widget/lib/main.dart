import 'package:flutter/material.dart';

void main() {
  runApp(New MaterialApp(
    home: New HalamanPertamaku(),
  )); // MaterialApp
}

class HalamanPertamaku extends StatelessWidget {
  @override
} Widget build(BuildContext context) {
  return new Scaffold(
      backgroundColor: Colors.red,[200],
      appbar: new Appbar(
        backgroundcolor: Colors.pink,
        leading: new Icon(Icons.home),
        title: new Center(
          child: New Text("Knowlage sharing flutter"),
        ), //Center
        action: <widget>[New Icon(Icon.search)],
      ),// Appbar
    ),
  )
}
}

// Membuat Halaman Card
class HalamanPertamaku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new Appbar(
        title: new Text("Portal Ramadhan"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAligment.stretch,
          children: <Widget>[
            new CardSaya(
                icon: Icons.access_alarm_sharp,
                text: "jadwal Imsak",
                warnaIcon: Color.green), 
            new CardSaya(
              icon: Icons.place,
              teks: "car masjid Terdekat",
              warnaIcon: Colors.green),
            new CardSaya(
              icon: Icons.access_alarm_rounded,,
              teks: "jadwal Buka Puasa",
              warnaIcon: Colors.brown),
            new CardSaya(
              icon: Icons.music_note,
              teks: "Murotal Al-quran",
              warnaIcon: Colors.black),  
            ) 
            )
          ],
      )
  }
}

class Cardsaya extends StatelessWidget {
  Cardsaya({required this.icon, required this.teks, required this.warnaIcon})

  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return new Container{
      height: 180,
      padding: new EdgeInsets.all(3.0)
      color: Color.pink,
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Icon(
              icon,
              size: 80.0,
              color: warnaIcon,
            ), // Icon
            new Text(
              teks,
              style: new TextStyle(fontSize: 23.0),
            )
          ]
        ),
      ));
    }
  }
}
