import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../helper.dart';
import 'login_screen.dart';


class ScreenSignup extends StatefulWidget {
  @override
  _ScreenSignupState createState() => _ScreenSignupState();
}

class _ScreenSignupState extends State<ScreenSignup> {
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
            "Sign up",
            style: textStyle,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              buildText(
                  name: "Sign up with one of following options",
                  choose: textStyle1),
              buildGoogleAppleFunction(mq),
              buildText(name: "Name", choose: textStyle2),
              buildNameField(),
              buildText(name: "Email", choose: textStyle2),
              buildEmailField(),
              buildText(name: "Password", choose: textStyle2),
              buildPasswordField(),
              const SizedBox(
                height: 25,
              ),
              buildCreateanAccount(),
              buildTaptoLogin(context),
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
              foregroundColor: Colors.deepOrange,
              side: const BorderSide(color: Colors.grey),
              elevation: 15.0,
              minimumSize: const Size(20, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          onPressed: () {
            print("Icon Touch");
          },
          child: const Icon(Icons.arrow_back_ios, color: Colors.white)),
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
                    foregroundColor: Colors.red,
                    side: const BorderSide(color: Colors.grey),
                    elevation: 15.0,
                    minimumSize: Size(mq.width * 0.4, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  print("Icon Google");
                },
                child: const Icon(
                  FontAwesomeIcons.google,
                  color: Colors.white,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.red,
                    side: const BorderSide(color: Colors.grey),
                    elevation: 15.0,
                    minimumSize: Size(mq.width * 0.4, 50),
                    // backgroundColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  print("Icon Apple");
                },
                child: const Icon(FontAwesomeIcons.apple, color: Colors.white)),
          ),
        ],
      ),
    );
  }

  Widget buildNameField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
      child: TextFormField(
        style: textStyle2,
        cursorColor: Colors.white,
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.deepOrange),
                borderRadius: BorderRadius.circular(20)),
            hintText: "Full Name",
            hintStyle: textStyle1,
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.deepOrange),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }

  Widget buildEmailField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
      child: TextFormField(
        style: textStyle2,
        cursorColor: Colors.white,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.deepOrange),
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: "hello@signup.com",
            hintStyle: textStyle1,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
      ),
    );
  }

  Widget buildText({String? name, TextStyle? choose}) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10),
      child: Text(
        name!,
        style: choose,
      ),
    );
  }

  Widget buildPasswordField() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
      child: TextFormField(
        style: textStyle2,
        cursorColor: Colors.white,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.deepOrange),
                borderRadius: BorderRadius.circular(20)),
            hintText: "pick a strong password",
            hintStyle: textStyle1,
            border: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.deepOrange),
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }

  Widget buildCreateanAccount() {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), backgroundColor: Colors.deepOrange[500],
            minimumSize: const Size(500, 48)),
        child: const Text("Create Account"),
      ),
    );
  }

  Widget buildTaptoLogin(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, left: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Already have an account?",
            style: textStyle1,
          ),
          const SizedBox(
            width: 8,
          ),
          TextButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ScreenLogin()));
              },
              child: const Text(
                "Log in",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}
