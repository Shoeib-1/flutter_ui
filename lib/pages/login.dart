import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
                  margin: EdgeInsets.symmetric(vertical: 35),
                  child: Text("LOG IN",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Schyler",
                      )),
                ),
                SvgPicture.asset(
                  "assets/icons/login.svg",
                  width: 279,
                ),
                SizedBox(
                  height: 40,
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
                    "login",
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
                    Text("Dont have an Account? "),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        " Sign up",
                        style: TextStyle(fontWeight: FontWeight.bold),
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
