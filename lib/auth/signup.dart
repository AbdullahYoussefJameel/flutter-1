import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:untitled/comp/cin.dart';
import 'package:untitled/comp/matt-butt.dart';
import 'package:untitled/comp/textfrmf.dart';
import 'package:untitled/auth/login.dart';
import 'package:untitled/homepage.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _LoginState();
}

class _LoginState extends State<Signup> {
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  final TextEditingController username = TextEditingController();

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
                  "signup",
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
              "username",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(height: 10),
            Textfrmf(hinttext: "enter your username", mycon: username),
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
            customButtonAuth(
              text: "signup",
              onPressed: () async {
                try {
                  final credential = await FirebaseAuth.instance
                      .createUserWithEmailAndPassword(
                        email: email.text,
                        password: pass.text,
                      );
                  Navigator.of(context).pushReplacementNamed("homepage");
                } on FirebaseAuthException catch (e) {
                  if (e.code == 'email-already-in-use') {
                    print('The account already exists for that email.');
                  } else if (e.code == 'weak-password') {
                    print('The password provided is too weak.');
                  } else {
                    print('Failed with error code: ${e.code}');
                    print(e.message);
                  }
                }
              },
            ),

            Container(height: 20),

            Container(height: 20),
            InkWell(
              onTap: () {
                Navigator.of(context).pushReplacementNamed("login");
              },
              child: Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: "if you have a account"),
                      TextSpan(
                        text: "login",
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

Widget customButtonAuth({
  required String text,
  required VoidCallback onPressed,
}) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      backgroundColor: Colors.blueAccent,
    ),
    child: Text(text, style: TextStyle(fontSize: 18, color: Colors.white)),
  );
}
