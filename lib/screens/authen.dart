import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  Widget showlogo() {
    return Image.asset('images/logo_strawerry.png');
  }

  Widget showTitle() {
    return Text(
      'Tzak Food Land',
      style: TextStyle(
          fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.red[900]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: 10.0), // กำนหดตำแหน่ง เป็นด้านบนและ 70.0
      alignment: Alignment(0, -1),
      // child: showTitle(), ใส่ widget อย่างเดียว
      child: Column(
        children: <Widget>[
          showlogo(),
          Container(
            child: showTitle(),
          ),
          showTitle()
        ],
      ), //การกำหนดให้แสดงข้อมูลแบบเรียงจากบนลงล่าง แบบ colum เปลี่ยนอันบนเป็น logo
    )); // xy 0,0 ตรงกลาง
  }
}
