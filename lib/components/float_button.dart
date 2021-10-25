import 'package:flutter/material.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({Key? key, required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.white,
      child: Image.asset(
        "assets/images/$image.png",
        height: 40,
      ),
    );
  }
}
