import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:signin_and_signp/screen/signUp_screen.dart';

import '../helper.dart';


class ScreenLogin extends StatefulWidget {
  @override
  _ScreenLoginState createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: buildButton(),
          title: Text(
            "Log in",
            style: textStyle,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              buildText(
                  name: "Log in with one of following options",
                  choose: textStyle1),
              buildGoogleAppleFunction(mq),
              buildText(name: "Email", choose: textStyle2),
              buildEmailField(),
              buildText(name: "Password", choose: textStyle2),
              buildPasswordField(),
              SizedBox(
                height: 25,
              ),
              buildTaptoLogin(),
              buildTaptoSignup(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 8),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.teal,
              side: BorderSide(color: Colors.grey),
              elevation: 15.0,
              minimumSize: Size(12, 30),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {
            print("Icon Touch");
          },
          child: Icon(Icons.arrow_back_ios, color: Colors.white)),
    );
  }

  Widget buildText({required String name, required TextStyle choose}) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10),
      child: Text(
        name,
        style: choose,
      ),
    );
  }

  Widget buildGoogleAppleFunction(Size mq) {
    return Padding(
      padding: const EdgeInsets.only(top: 13, left: 5, right: 3, bottom: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey),
                    elevation: 15.0,
                    minimumSize: Size(mq.width * 0.4, 50),
                    primary: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  print("Icon Google");
                },
                child: Icon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.grey),
                    elevation: 15.0,
                    minimumSize: Size(mq.width * 0.4, 50),
                    primary: Colors.red,
                    // backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  print("Icon Apple");
                },
                child: Icon(FontAwesomeIcons.apple, color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget buildTaptoLogin() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Log in",style: TextStyle(color: Colors.black),),
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            minimumSize: Size(500, 48),
            primary: Colors.greenAccent),
      ),
    );
  }

  Widget buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
      child: TextFormField(
        cursorColor: Colors.white,
        style: textStyle2,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent),
                borderRadius: BorderRadius.circular(20)),
            hintStyle: textStyle1,
            hintText: "Enter your password",
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }

  Widget buildEmailField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
      child: TextFormField(
        cursorColor: Colors.white,
        style: textStyle2,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent),
                borderRadius: BorderRadius.circular(20)),
            hintStyle: textStyle1,
            hintText: "helloshahin@login.com",
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.greenAccent),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }

  Widget buildTaptoSignup(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account?",
            style: textStyle1,
          ),
          SizedBox(
            width: 8,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ScreenSignup()));
              },
              child: Text(
                "Sign up",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
