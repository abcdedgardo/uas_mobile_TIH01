import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  static const String id = 'about_screen';
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        title: Text('Tentang'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('assets/img/UBM_Logo.png',
            width: 150.0,
            height: 150.0,
          ),
          Column(
            children: <Widget>[
              Text('Aplikasi ini dibuat oleh kelompok 10 dalam rangka memenuhi mata kuliah Pemrograman Mobile.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ],
      ),
    );
  }
}