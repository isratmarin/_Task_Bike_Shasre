import 'package:flutter/material.dart';

import 'package:task_bike_sharing_app/pages/profile/support.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.greenAccent, Colors.blue],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/avatar.png'),
                ),
                accountName: Text('israt jahan'),
                accountEmail: Text('')),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                  )),
              child: ListTile(
                title: Row(
                  children: [
                    Text('My Walet'),
                    SizedBox(
                      width: 70,
                    ),
                    Container(),
                    Text("\$10")
                  ],
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              title: Text('My Statistics'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Invite Friend'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Support'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Support()),
                );
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                      radius: (52),
                      backgroundColor: Colors.white,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset("images/ride.jpg"),
                      )),
                  const Icon(
                    Icons.search,
                    size: 40.0,
                  )
                ],
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello Jon",
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Wanna take a ride today?",
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
