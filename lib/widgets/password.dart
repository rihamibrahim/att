import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({ Key? key }) : super(key: key);

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  @override
  Widget build(BuildContext context) {
    return Container(
       padding: const EdgeInsets.symmetric(horizontal: 20),
           margin: const EdgeInsets.symmetric(horizontal: 30),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(50),
             color:const  Color(0xffF1F1F1),
           ),
           child: const TextField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  
                  decoration: InputDecoration(
                   // suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Password',
                    hintStyle:  TextStyle(color: Color(0xff989898)),
                    
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                  ),
           ),
    );
  }
}