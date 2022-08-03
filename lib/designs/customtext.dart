import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key,required this.fontweigth,required this.color,required this.text,required this.fontsize}) : super(key: key);

  final Color color;
  final FontWeight fontweigth;
  final double fontsize;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        color: color,
        fontWeight: fontweigth,
        fontSize: fontsize
    ),);
  }
}