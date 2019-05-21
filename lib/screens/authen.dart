import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  Widget showSignUp() {
    return RaisedButton(
      child: Text('Sign Up'),
      onPressed: () {},
    );
  }

  Widget showSignIn() {
    return RaisedButton(
      child: Text('Sign In'),
      onPressed: () {},
    );
  }

  Widget showUser() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'User : ', hintText: 'Your User'),
    );
  }

  Widget showPass() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Password :', hintText: 'Your Password'),
    );
  }

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
      color: Colors.blue,
      padding: EdgeInsets.only(top: 30.0), // กำนหดตำแหน่ง เป็นด้านบนและ 70.0
      alignment: Alignment(0, -1),
      // child: showTitle(), ใส่ widget อย่างเดียว
      child: Column(
        children: <Widget>[
          showlogo(),
          Container(
            child: showTitle(),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: showUser(),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 60.0),
            child: showPass(),
          ),
          Container(
            margin: EdgeInsets.only(left: 50.0, right: 50.0),
            child: Row(
              children: <Widget>[
                Expanded(child: showSignIn()),
                Expanded(
                  child: showSignUp(),
                )
              ],
            ),
          )
        ],
      ), //การกำหนดให้แสดงข้อมูลแบบเรียงจากบนลงล่าง แบบ colum เปลี่ยนอันบนเป็น logo
    )); // xy 0,0 ตรงกลาง
  }
}
