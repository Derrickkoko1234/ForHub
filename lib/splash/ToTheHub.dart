// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ToTheHubPage extends StatelessWidget {
  const ToTheHubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Center(
            child: Padding(
              padding: EdgeInsets.all(28.0),
              child: Image(
                image: AssetImage(
                  'assets/images/tothehub.png',
                ),
              ),
            ),
          ),
          Text('To The Hub', style: TextStyle(fontSize: 20),)
        ],
      ),
    );
  }
}
