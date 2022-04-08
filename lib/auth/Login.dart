import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            height: 40,
          ),
          const Text('Welcome! Login'),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Non ipsum ',
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
                      borderSide:
                          BorderSide(color: Color(0xFFF2F2F2), width: 1.0),
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
                      borderSide:
                          BorderSide(color: Color(0xFFF2F2F2), width: 1.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
