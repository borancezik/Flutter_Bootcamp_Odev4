import 'package:flutter/material.dart';
import 'package:odev_dort/renkler.dart';
import 'package:odev_dort/sayfab.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  _SayfaAState createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "SAYFA A",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: sayfaAAnaRenk),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 60,
                width:150,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaB()));
                    },
                    style: TextButton.styleFrom(backgroundColor: butonAnaRenk),
                    child: Text(
                      "Git > Sayfa B",
                      style: TextStyle(color: yaziAnaRenk),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
