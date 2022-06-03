import 'package:flutter/material.dart';
import 'package:odev_dort/renkler.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  _SayfaYState createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "SAYFA Y",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: sayfaYAnaRenk),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 60,
                width:150,
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).popUntil((route) => route.isFirst);
                    },
                    style: TextButton.styleFrom(backgroundColor: butonAnaRenk),
                    child: Text(
                      "Geri Git",
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
