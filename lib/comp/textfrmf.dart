import 'package:flutter/material.dart';

class Textfrmf extends StatelessWidget {
  final String hinttext;
  final TextEditingController mycon;
  const Textfrmf({super.key, required this.hinttext, required this.mycon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: mycon,
      decoration: InputDecoration(
        hintText: (hinttext),
        hintStyle: TextStyle(fontSize: 15),
        contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        fillColor: Colors.grey[200],
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
