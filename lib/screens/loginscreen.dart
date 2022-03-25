import 'package:attendance/screens/emailverfiy.dart';
import 'package:attendance/screens/homescreen.dart';
import 'package:attendance/widgets/email.dart';
import 'package:attendance/widgets/password.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                'LOGIN TO YOUR ACCOUNT ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1C2D40)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Email(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Password(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                children: [
                  GestureDetector(
                    onTap:() =>  Navigator.push(context, MaterialPageRoute(builder: (context)=>const EmailVerfiy())) ,
                    child: const Text(
                      'Forget password ?',
                      style: TextStyle(
                          color: Color(0xff6C6C6C), fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
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
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
                },
                child: const Text(
                  'LOG IN',
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
    ));
  }
}
