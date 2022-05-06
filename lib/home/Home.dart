// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFFF6600),
        elevation: 0,
        title: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text('Jos Metropolis'),
            const Text('Lagos State'),
          ],
        ),
        centerTitle: true,
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Color(0xFFFF6600),
        ),
        child: Drawer(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFFF6600),
                  image: DecorationImage(
                    image: AssetImage('assets/images/background.png'),
                  ),
                ),
                accountEmail: Text('kokoderrick3@gmail.com'),
                accountName: Text(
                  'Derrick Koko',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile.png'),
                ),
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Notifications',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.dark_mode,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Dark Mode',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.payment_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Save Payment Gateway',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Hub Nearby',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
