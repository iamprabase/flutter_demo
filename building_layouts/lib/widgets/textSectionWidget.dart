import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String text;

  TextSection(this.text);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        text,
        softWrap: true,
        style: TextStyle(
          fontSize: 14,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}