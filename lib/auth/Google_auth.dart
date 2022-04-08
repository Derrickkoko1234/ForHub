import 'package:flutter/material.dart';

class GoogleAuth extends StatefulWidget {
  const GoogleAuth({Key? key}) : super(key: key);

  @override
  State<GoogleAuth> createState() => _GoogleAuthState();
}

class _GoogleAuthState extends State<GoogleAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 70,
          ),
          Text('Choose an account'),
        ],
      ),
    );
  }
}
