
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 32),
          padding: EdgeInsets.symmetric(horizontal: 16),
          height: MediaQuery.of(context).size.width * 0.12,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.red.withOpacity(0.9)),
          child: Center(
            child: Text(
              "اضافة الى السلة",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
          )),
    );
  }
}