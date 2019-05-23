import 'package:flutter/material.dart';
import 'package:http/http.dart'show get;

import 'dart:convert';


class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final formkey = GlobalKey<FormState>();

  String name, user, password;

  Widget registerButtom(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.cloud_upload),
      onPressed: () {
        print('You Click Register');
        if (formkey.currentState.validate()) {
          formkey.currentState.save();
          print('name = $name,user = $user,password = $password');
          uploadValueToServer(context);

        }
      },
    );
  }


//async เป็นการทำเทรด
  void uploadValueToServer(BuildContext contexst) async{ 
    String urlPHP = 'http://androidthai.in.th/tid/addUserUng.php?isAdd=true&name=$name&user=$user&password=$password';
    //var ประกาศตัวแปรให้กับ object
    var respone = await get(urlPHP);
    var resultString = json.decode(respone.body);
    print('resultString ==>$resultString');

    if (resultString.toString() =='true') {
      //Creat POP
      Navigator.of(context).pop();
      
    }

  }


  Widget nameTextFromField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'Name :', hintText: 'Type Your Name'),
      validator: (String value) {
        if (value.length == 0) {
          return 'Please Fill Name In Bank';
        }
      },
      onSaved: (String valueName) {
        name = valueName;
      },
    );
  }

  Widget userTextFormField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: 'User :', hintText: 'Type Youe User'),
      validator: (String value){
        if (value.length == 0) {
          return 'กรุณากรอก User ด้วย';
          
        }
       },
       onSaved: (String valueUser){
         user = valueUser;
       },
    );
  }

  Widget passwordTextFromField() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Password :', hintText: 'More 6 Charactor'),
      validator: (String value) {
        if (value.length <= 5) {
          return 'กรุณา กรอก Password ให้มากกว่า 6 ตัวอักษร ';
        }
      },
      onSaved: (String valuePass){
         password = valuePass;
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Register'),
        actions: <Widget>[registerButtom(context)],
      ),
      body: Form(
        key: formkey,
        child: Container(
          padding: EdgeInsets.all(50.0),
          child: Column(
            children: <Widget>[
              nameTextFromField(),
              userTextFormField(),
              passwordTextFromField()
            ],
          ),
        ),
      ), //Appbar
    );
  }
}
