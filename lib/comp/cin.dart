import 'package:flutter/material.dart';

class Cin extends StatelessWidget {
  const Cin({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
