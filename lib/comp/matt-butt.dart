import 'package:flutter/material.dart';

class Matt extends StatelessWidget {
  final void Function()? onPressed;
  final String name;
  const Matt({super.key, required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 45,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(50),
      ),
      color: Colors.orange,
      onPressed: onPressed,
      child: Text(name),
    );
  }
}
