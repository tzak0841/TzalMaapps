import 'package:flutter/material.dart';

import 'package:tzakapp/screens/register.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
        final getFormKey = GlobalKey<FormState>();
        String user,password;

  Widget showSignUp() {
    return RaisedButton(
        child: Text('Sign Up'),
        onPressed: () {
          print('You Click SignUp');

          //Creat Router เพื่อเรียกใช้งาน register

          var registerRouter =
              MaterialPageRoute(builder: (BuildContext context) => Register());
          Navigator.of(context).push(registerRouter);
        });
  }

  Widget showSignIn() {
    return RaisedButton(
      child: Text('Sign In'),
      onPressed: () {

        if (getFormKey.currentState.validate()) {
          
        }



      },
    );
  }

  Widget showUser() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'User : ', hintText: 'Your User'),
      validator: (String value) {
        if (value.length == 0) {
          return 'กรอก user ด้วย';
        }
      },
      onSaved: (String value) {},
    );
  }


  void checkUserandPassword() async{
       

  }  
  Widget showPass() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Password :', hintText: 'Your Password'),
          validator: (String value){
            if (value.length <= 5) {
              return 'Password ต้องมากกว่า 6 ตัวอักษร';
              
            }
          },onSaved: (String value) {
            password = value;
            
          },
    );
  }

  Widget showlogo() {
    return Image.asset('images/logo_strawerry.png');
  }

  Widget showTitle() {
    return Text('Tzak Food Land',
        style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            color: Colors.red[900]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        //body: Form(key){
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue[50], Colors.blue[200]],
                    begin: Alignment(-1,
                        -1)) // แก้บัก keyboard -->resizeToAvoidBottomPadding:

                ), //ปรับสีเป็นเฉด -1,-1 ขอบขวาและซ้าย
            padding:
                EdgeInsets.only(top: 30.0), // กำนหดตำแหน่ง เป็นด้านบนและ 70.0
            alignment: Alignment(0, -1),
            //child: showTitle(), ใส่ widget อย่างเดียว
            child: Column(children: <Widget>[
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
                  child: Row(children: <Widget>[
                    Expanded(child: showSignIn()),
                    Expanded(child: showSignUp())
                  ]))

//การกำหนดให้แสดงข้อมูลแบบเรียงจากบนลงล่าง แบบ colum เปลี่ยนอันบนเป็น logo
// xy 0,0 ตรงกลาง
            ]
            )
            )
         // }
            );
  }
}
