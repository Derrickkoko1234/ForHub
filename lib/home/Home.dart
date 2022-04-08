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
      drawer: Drawer(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Color(0xFFFF6600),
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.png'))),
              accountEmail: Text('kokoderrick3@gmail.com'),
              accountName: Text('Derrick Koko'),
              // currentAccountPicture: AssetImage('assets/images/profile.png'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
