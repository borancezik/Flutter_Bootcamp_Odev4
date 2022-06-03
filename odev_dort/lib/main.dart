import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odev_dort/renkler.dart';
import 'package:odev_dort/sayfaa.dart';
import 'package:odev_dort/sayfax.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "ANASAYFA",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 60,
                width:150,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaA()));
                    },
                    style: TextButton.styleFrom(backgroundColor: butonAnaRenk),
                    child: Text(
                      "Sayfa A",
                      style: TextStyle(color: yaziAnaRenk),
                    )),
              ),
              SizedBox(height: 60,
                width: 150,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaX()));
                    },
                    style: TextButton.styleFrom(backgroundColor: butonAnaRenk),
                    child: Text(
                      "Sayfa X",
                      style: TextStyle(color: yaziAnaRenk),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
