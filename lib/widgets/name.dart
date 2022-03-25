import 'package:flutter/material.dart';

class Name extends StatefulWidget {
  const Name({ Key? key }) : super(key: key);

  @override
  State<Name> createState() => _NameState();
}

class _NameState extends State<Name> {
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
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Full Name',
                    hintStyle:  TextStyle(color: Color(0xff989898)),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                  ),
           ),
         
    );
  }
}