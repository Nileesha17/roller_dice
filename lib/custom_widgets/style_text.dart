import 'package:flutter/material.dart';

class StyleText extends StatelessWidget{
 StyleText(this.text,{super.key});
 String text;
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 20
      ),
    );
  }

}