// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:forhub/auth/Login.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FirstBoard(),
    );
    // return const FirstBoard();
  }
}

class FirstBoard extends StatelessWidget {
  const FirstBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 28.0,
              right: 28,
              top: 50,
            ),
            child: Center(
              child: Text(
                'Quick and easy way to locate a hub',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Image(
            image: AssetImage('assets/images/board/1.png'),
          ),
          const Padding(
            padding: EdgeInsets.all(28.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non ipsum tempor auctor ipsum sollicitudin dui vel eu mi',
              style: TextStyle(
                fontSize: 18,
                height: 1.3,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xFFFF6600),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondBoard(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Color(0xFFC4C4C4),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThirdBoard(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Color(0xFFC4C4C4),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFF6600), // background
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SecondBoard extends StatelessWidget {
  const SecondBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 28.0,
              right: 28,
              top: 50,
            ),
            child: Center(
              child: Text(
                'Book for hub at your own convinent time',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Image(
            image: AssetImage('assets/images/board/2.png'),
          ),
          const Padding(
            padding: EdgeInsets.all(28.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non ipsum tempor auctor ipsum sollicitudin dui vel eu mi',
              style: TextStyle(
                fontSize: 18,
                height: 1.3,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FirstBoard(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Color(0xFFC4C4C4),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xFFFF6600),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ThirdBoard(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Color(0xFFC4C4C4),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFF6600), // background
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ThirdBoard extends StatelessWidget {
  const ThirdBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 28.0,
              right: 28,
              top: 50,
            ),
            child: Center(
              child: Text(
                'Quick and easy',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Image(
            image: AssetImage('assets/images/board/3.png'),
          ),
          const Padding(
            padding: EdgeInsets.all(28.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non ipsum tempor auctor ipsum sollicitudin dui vel eu mi',
              style: TextStyle(
                fontSize: 18,
                height: 1.3,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FirstBoard(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Color(0xFFC4C4C4),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondBoard(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: Color(0xFFC4C4C4),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: Color(0xFFFF6600),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 28.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFFFF6600), // background
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                    );
                  },
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(fontSize: 18),
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        size: 18,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
