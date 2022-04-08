// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:forhub/home/Home.dart';

class GoogleAuthPage extends StatefulWidget {
  const GoogleAuthPage({Key? key}) : super(key: key);

  @override
  State<GoogleAuthPage> createState() => _GoogleAuthPageState();
}

class _GoogleAuthPageState extends State<GoogleAuthPage> {
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
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          child: ListView(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 60,
              ),
              const Center(
                  child: Text(
                'Choose an account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
              const Center(child: Text('to continue to Forhub')),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const ListTile(
                    leading: const CircleAvatar(
                      child: Text(
                        'A',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    title: const Text(
                      'Derrick Koko',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('kokoderrick3@gmail.com'),
                  ),
                ),
              ),
              const Divider(
                color: Color.fromARGB(47, 0, 0, 0),
                thickness: 1,
              ),
              const Center(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                    child: Text(
                      'A',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: Text(
                    'Derrick Koko',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('kokoderrick3@gmail.com'),
                ),
              ),
              const Divider(
                color: Color.fromARGB(47, 0, 0, 0),
                thickness: 1,
              ),
              const Center(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.pink,
                    child: Text(
                      'A',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  title: Text(
                    'Derrick Koko',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('kokoderrick3@gmail.com'),
                ),
              ),
              const Divider(
                color: Color.fromARGB(47, 0, 0, 0),
                thickness: 1,
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text:
                            'To continue, Google will share your name, email address, and profile picture with Solar Project. Before using this app, review its '),
                    TextSpan(
                      text: 'Privacy Policy ',
                      style: TextStyle(
                        color: Color(0xFFFF6600),
                      ),
                    ),
                    TextSpan(text: 'and '),
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(
                        color: Color(0xFFFF6600),
                      ),
                    ),
                    TextSpan(text: '.'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
