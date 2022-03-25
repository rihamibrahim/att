import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  const Email({ Key? key }) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.symmetric(horizontal: 20),
           margin: const EdgeInsets.symmetric(horizontal: 30),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(50),
             color:const  Color(0xffF1F1F1),
           ),
           child:const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Your Institute Email ID',
                    hintStyle:  TextStyle(color: Color(0xff989898)),
                    
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                  ),
           ),
    );
  }
}