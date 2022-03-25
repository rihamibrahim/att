import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class CamScanner extends StatefulWidget {
  const CamScanner({Key? key}) : super(key: key);

  @override
  _CamScannerState createState() => _CamScannerState();
}

String _data="";
Future<String>_scan() async
{
  return await FlutterBarcodeScanner.scanBarcode(
      lineColor,
      cancelButtonText,
      isShowFlashIcon,
      scanMode)
}
class _CamScannerState extends State<CamScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40.0,
        leading: const Icon(
          Icons.arrow_back,
        ),
        title: const Text(
          'Attending',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 60.0,
                    backgroundImage: AssetImage('assets/images/download.png'),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    'User',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              FlatButton(
                onPressed: () async=> _data= await _scan(),
                  child: const Text(
                      'Scan Qr Code'
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

