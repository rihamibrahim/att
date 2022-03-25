import 'package:attendance/screens/verficationcode.dart';
import 'package:flutter/material.dart';

class EmailVerfiy extends StatefulWidget {
  const EmailVerfiy({ Key? key }) : super(key: key);

  @override
  State<EmailVerfiy> createState() => _EmailVerfiyState();
}

class _EmailVerfiyState extends State<EmailVerfiy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 250),
              child: Text(
                'Please enter your email to recieve ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1C2D40)),
              ),
              
            ),
           const Text(
                ' a verification code',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1C2D40)),
              ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
           Container(
       padding: const EdgeInsets.symmetric(horizontal: 20),
           margin: const EdgeInsets.symmetric(horizontal: 30),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(50),
             color:const  Color(0xffF1F1F1),
           ),
           child:const TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Enter your email',
                    hintStyle:  TextStyle(color: Color(0xff989898)),
                    
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none
                  ),
           ),
    ),
           
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SizedBox(
              width: 140,
              height: 41,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff3D77BB),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const Code()));
                },
                child: const Text(
                  'SEND',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      )
    );
  }
}