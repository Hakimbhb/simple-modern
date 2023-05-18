// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Stack(children: [
          Positioned(
            child: Image.asset(
              "assets/images/main_top.png",
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
            ),
          ),
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "WELCOME TO EDU",
                  style: TextStyle(fontFamily: "handwrt", fontSize: 22),
                ),
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/log');
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
                    "Login",
                    style: TextStyle(fontFamily: "handwrt", fontSize: 13),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.fromLTRB(100, 20, 100, 20)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25))),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 156, 51, 172)),
                  ),
                  child: const Text(
                    "Signup",
                    style: TextStyle(fontFamily: "handwrt", fontSize: 13),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
