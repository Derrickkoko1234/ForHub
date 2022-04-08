// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:forhub/onboarding/Onboarding.dart';

class ToTheHubPage extends StatelessWidget {
  const ToTheHubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(top: 28.0),
              child: Image(
                image: AssetImage(
                  'assets/images/tothehub.png',
                ),
              ),
            ),
          ),
          const Center(
            child: Text(
              'To The Hub',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 28.0,
              right: 28.0,
              top: 10,
            ),
            child: Text(
              'Quis porttitor nullam mi in tellus quis commodo. Mattis dignissim curabitur sed cursus sed porttitor vel at iaculis. Eget varius posuere massa, amet eu, non libero. Laoreet arcu sem libero, non amet, erat risus eu, egestas. Augue nulla feugiat nulla vel. Aliquet non dictum amet fermentum nibh enim fames mauris praesent. Pulvinar augue semper egestas praesent tincidunt quis eu.',
              style: TextStyle(
                fontSize: 18,
                height: 1.4,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 28.0,
              right: 28.0,
              top: 30,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OnboardingPage(),
                  ),
                );
              },
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    'Begin your journey',
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: const Image(
                      image: AssetImage('assets/images/vector.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
