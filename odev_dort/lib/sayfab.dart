import 'package:flutter/material.dart';
import 'package:odev_dort/renkler.dart';
import 'package:odev_dort/sayfay.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({Key? key}) : super(key: key);

  @override
  _SayfaBState createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "SAYFA B",
            style: TextStyle(fontSize: 30, color: Colors.black),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: sayfaBAnaRenk),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 60,
                width:150,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaY()));
                    },
                    style: TextButton.styleFrom(backgroundColor: butonAnaRenk),
                    child: Text(
                      "Git > Sayfa Y",
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
