// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          Positioned(
              child: Image.asset(
            "assets/images/main_top.png",
            width: 120,
          )),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 28),
                  child: Text("Sign up",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Schyler",
                      )),
                ),
                SvgPicture.asset(
                  "assets/icons/signup.svg",
                  width: 155,
                ),
                SizedBox(
                  height: 27,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.person,
                          color: Colors.purple[800],
                        ),
                        hintText: "Your Email :",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple[100],
                    borderRadius: BorderRadius.circular(66),
                  ),
                  width: 266,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        suffix: Icon(
                          Icons.visibility,
                          color: Colors.purple[900],
                        ),
                        icon: Icon(
                          Icons.lock,
                          color: Colors.purple[800],
                          size: 19,
                        ),
                        hintText: "Password :",
                        border: InputBorder.none),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 24),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 106, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an Account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        " Log in",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 23,
                ),
                SizedBox(
                  width: 299,
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 3,
                          color: Colors.purple[850],
                        ),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                            color: Colors.purple[850],
                            fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 3,
                          color: Colors.purple[850],
                          endIndent: 9,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 95, 4, 214))),
                      child: SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        width: 33,
                        color: Colors.purple,
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 95, 4, 214))),
                      child: SvgPicture.asset(
                        "assets/icons/twitter.svg",
                        width: 33,
                        color: Colors.purple,
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 1,
                              color: Color.fromARGB(255, 95, 4, 214))),
                      child: SvgPicture.asset(
                        "assets/icons/google-plus.svg",
                        width: 33,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
