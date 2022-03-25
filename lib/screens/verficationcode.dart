import 'package:attendance/screens/resetpassword.dart';
import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class Code extends StatefulWidget {
  const Code({Key? key}) : super(key: key);

  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {
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
                'Please enter the 4 digit code we sent you ',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff1C2D40)),
              ),
            ),
            const Text(
              ' via email to continue ',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff1C2D40)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: PinFieldAutoFill(
                codeLength: 4,
                onCodeChanged: (val) {},
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ResetPassword()));
                },
                child: const Text(
                  'VERIFY',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
             SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            GestureDetector(
              onTap: () =>  Navigator.push(context, MaterialPageRoute(builder: (context)=>const Code()))  ,
              child: const Text(
                'Resend code ?',
                style: TextStyle(
                    color: Color(0xff6C6C6C), fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
