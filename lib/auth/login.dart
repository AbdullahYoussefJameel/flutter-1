import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                Center(
                  child: Container(
                    alignment: Alignment.center,
                    width: 80,
                    height: 80,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Image.asset(
                      "images/272343171_333561001824667_4750036223784104300_n.jpg",
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
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
            TextFormField(
              decoration: InputDecoration(
                hintText: ("enter your email"),
                hintStyle: TextStyle(fontSize: 15),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10,
                ),
                fillColor: Colors.grey[200],
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            Container(height: 20),
            Text(
              "Passowerd",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(height: 10),
            TextFormField(
              decoration: InputDecoration(
                hintText: "enter your pasword",
                hintStyle: TextStyle(fontSize: 15),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                fillColor: Colors.grey,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: Text(
                "forget passowrd",
                textAlign: TextAlign.right,
                style: TextStyle(fontSize: 14),
              ),
            ),
            MaterialButton(
              height: 45,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(50),
              ),
              color: Colors.orange,
              onPressed: () {},
              child: Text("login"),
            ),
            Container(height: 20),

            MaterialButton(
              height: 45,
              color: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(50),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("login with google")],
              ),
            ),
            Container(height: 20),
            Center(
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
          ],
        ),
      ),
    );
  }
}
