import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  String imagepath;
  String text;
  bool isSender;
   ChatWidget({super.key,required this.imagepath,required this.text,required this.isSender});

  @override
  Widget build(BuildContext context) {
    return Row(textDirection: isSender?TextDirection.rtl:TextDirection.ltr,
      children: [
        ClipOval(
          child: Image.asset(
            imagepath,
            fit: BoxFit.cover,
            height: 50,
            width: 50,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          padding: EdgeInsets.all(15),
          margin: EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: Colors.transparent,
            border: Border.all(color: Colors.white),
          ),
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
        )
      ],
    );
  }
}
