import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  final String text;

  const MessageBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white, // Color inside the container
        border: Border.all(
          color: const Color.fromARGB(
            255,
            125,
            124,
            124,
          ), // **The border color**
          width: .5, // The border width
        ),
      ),
      child: Align(alignment: Alignment.center, child: Text(text)),
    );
  }
}
