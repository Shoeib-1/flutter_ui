import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 35),
                      child: Text("WELCOME TO EDU",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Schyler",
                          )),
                    ),
                    SvgPicture.asset(
                      "assets/icons/chat.svg",
                      width: 279,
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text(
                        "login",
                        style: TextStyle(fontSize: 24),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/signup");
                      },
                      child: Text(
                        "SIGNUP",
                        style: TextStyle(fontSize: 17, color: Colors.grey[850]),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.purple[100]),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 77, vertical: 13)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(27))),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/main_top.png",
                  width: 111,
                  fit: BoxFit.cover,
                ),
                top: 0,
                left: 0,
              ),
              Positioned(
                child: Image.asset(
                  "assets/images/main_bottom.png",
                  width: 111,
                  fit: BoxFit.cover,
                ),
                bottom: 0,
                left: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
