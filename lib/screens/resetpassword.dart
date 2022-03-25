import 'package:attendance/widgets/confirmpassword.dart';
import 'package:attendance/widgets/password.dart';
import 'package:flutter/material.dart';

import 'homescreen.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({ Key? key }) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 120),
              child: Text(
                'Reset Password',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1C2D40)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Text(
              'Please enter your new password below ',
              style: TextStyle(fontSize: 15, color: Color(0xff6C6C6C)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            
            const Password(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const ConfirmPassword(),
            SizedBox( height: MediaQuery.of(context).size.height * 0.05),
            SizedBox(
              width: 140,
              height: 41,
              child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                      primary:const Color(0xff3D77BB),
                       shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                },         
                child:const  Text('SAVE', style: TextStyle(
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