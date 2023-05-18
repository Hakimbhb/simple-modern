// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/signup_top.png",
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/login_bottom.png",
              height: 147,
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "SIGNUP",
                  style: TextStyle(fontFamily: "handwrt", fontSize: 22),
                ),
                SvgPicture.asset(
                  "assets/icons/signup.svg",
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(33, 0, 33, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      color: Colors.purple[100]),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: InputBorder.none),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(33, 20, 33, 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(300),
                      color: Colors.purple[100]),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.visibility),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/');
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.purple[500]),
                  ),
                  child: const Text(
                    "SIGN UP",
                    style: TextStyle(fontFamily: "handwrt", fontSize: 13),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                          color: Colors.purple[700],
                          fontFamily: "handwrt",
                          fontSize: 14),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/log');
                      },
                      child: Text(
                        "Login? ",
                        style: TextStyle(
                            color: Colors.purple[700],
                            fontFamily: "handwrt",
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Text(
                  "----------------------OR----------------------",
                  style: TextStyle(
                      color: Colors.purple[700],
                      fontFamily: "handwrt",
                      fontSize: 13),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/facebook.svg",
                      // ignore: deprecated_member_use
                      color: Colors.lightBlue,
                    ),
                    SvgPicture.asset(
                      "assets/icons/google-plus.svg",
                      // ignore: deprecated_member_use
                      color: Colors.redAccent,
                      height: 33,
                    ),
                    SvgPicture.asset(
                      "assets/icons/twitter.svg",
                      height: 33,
                      // ignore: deprecated_member_use
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
