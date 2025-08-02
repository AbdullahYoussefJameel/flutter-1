import 'package:flutter/material.dart';
import 'package:untitled/comp/cin.dart';
import 'package:untitled/comp/matt-butt.dart';
import 'package:untitled/comp/textfrmf.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(height: 50),
                Cin(),
                Container(height: 20),
                Text(
                  "login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Container(height: 10),
                Text(
                  "login to contounue to app",
                  style: TextStyle(fontSize: 15),
                ),
                Container(height: 20),
              ],
            ),
            Container(height: 20),

            Text(
              "Email",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(height: 10),
            Textfrmf(hinttext: "enter your email", mycon: email),
            Container(height: 20),
            Text(
              "Passowerd",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(height: 10),
            Textfrmf(hinttext: "enter your password", mycon: pass),
            Container(
              alignment: Alignment.topRight,
              child: Text(
                "forget passowrd",
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Matt(name: "login", onPressed: () {}),
            Container(height: 20),

            Matt(name: "login with google", onPressed: () {}),
            Container(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("signup");
              },
              child: Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "dont have a account"),
                      TextSpan(
                        text: "regestar",
                        style: TextStyle(
                          color: Colors.amber,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
