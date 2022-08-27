

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyIconText extends StatelessWidget {
  IconData icon;
  String tex;
  MyIconText({
    Key? key,
    required this.icon,
    required this.tex
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          textAlign: TextAlign.right,
          tex,
          style: TextStyle(
              color: Colors.black, fontSize: 16, ),
        ),

        Icon(icon,color: Colors.black,size: 18,),
      ],
    );
  }
}