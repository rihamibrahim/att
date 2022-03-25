import 'package:attendance/screens/homescreen.dart';
import 'package:attendance/screens/loginscreen.dart';
import 'package:attendance/widgets/confirmpassword.dart';
import 'package:attendance/widgets/email.dart';
import 'package:attendance/widgets/name.dart';
import 'package:attendance/widgets/password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80),
              child: Text(
                'Create Your Account',
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
              'Please enter info to create your account',
              style: TextStyle(fontSize: 15, color: Color(0xff6C6C6C)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            const Name(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Email(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const Password(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.01,
            ),
            const ConfirmPassword(),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 35),
                  child: Text(
                    'Aleardy have an account ?',
                    style: TextStyle(
                        color: Color(0xff6C6C6C), fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen())),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Color(0xff3D77BB), fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            SizedBox(
              width: 140,
              height: 41,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff3D77BB),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const Text(
                  'SIGN UP',
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
