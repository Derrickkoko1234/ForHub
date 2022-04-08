// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:forhub/auth/Google_auth.dart';
import 'package:forhub/auth/Login.dart';
import 'package:forhub/home/Home.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Image(
            image: AssetImage(
              'assets/images/back.png',
            ),
          ),
        ),
        title: const Text(''),
        backgroundColor: Colors.white,
        foregroundColor: const Color(0xFFFF6600),
        elevation: 0,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 28,
              right: 28,
            ),
            child: Text(
              'Welcome! Register',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 28,
              right: 28,
              top: 15,
            ),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non ipsum ',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Email Address',
                    fillColor: Color(0xFFF2F2F2),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Color(0xFFFF6600),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Color(0xFFFF6600)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFF2F2F2),
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.85,
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    fillColor: Color(0xFFF2F2F2),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xFFFF6600),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      borderSide: BorderSide(color: Color(0xFFFF6600)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFF2F2F2), width: 1.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 28,
              right: 28,
              top: 18,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.62,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Re-enter Password',
                      fillColor: Color(0xFFF2F2F2),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Color(0xFFFF6600),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        borderSide: BorderSide(color: Color(0xFFFF6600)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFF2F2F2), width: 1.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFFF2F2F2),
                  ),
                  width: 55,
                  height: 55,
                  child: const Icon(
                    Icons.fingerprint,
                    color: Color(0xFFFF6600),
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 28,
              left: 28,
              top: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Color(0xFFFF6600),
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFFF6600), // background
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              icon: const Icon(
                Icons.lock,
                size: 17,
              ),
              label: const Text(
                'Register',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 18.0),
            child: Center(
              child: Text(
                'or',
                style: TextStyle(
                  color: Color(0xFFFF6600),
                  fontSize: 22,
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GoogleAuthPage(),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF26424E),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                ),
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Image(
                        image: AssetImage('assets/images/google.png'),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Register with Google',
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFFFF6600)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: Color(0xFFFF6600),
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
