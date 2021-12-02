import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Beranda(),
    );
  }
}

class Beranda extends StatelessWidget {
  const Beranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Text(
                'username',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              IconButton(
                alignment: Alignment.centerLeft,
                icon: const Icon(
                  Icons.arrow_drop_down_outlined,
                  color: Colors.black,
                  size: 20,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.safety_divider),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
            IconButton(
              icon: const Icon(Icons.plus_one_sharp),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ],
        ),
        body: const BodyBeranda(),
      ),
    );
  }
}

class BodyBeranda extends StatelessWidget {
  const BodyBeranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const <Widget>[
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
              radius: 30,
            ),
            SizedBox(
              width: 10,
            ),
            DataUser(),
            SizedBox(
              width: 10,
            ),
            DataUser(),
            SizedBox(
              width: 10,
            ),
            DataUser(),
          ],
        ),
        const Text(
          'Username',
        ),
        RichText(
          text: const TextSpan(
            text:
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididun',
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text(
            'Edit Profile',
            style: TextStyle(color: Colors.black),
          ),
        ),
        Row(
          children: [
            Column(
              children: const <Widget>[
                CircleAvatar(
                  radius: 30,
                ),
                Text(
                  'Username',
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class DataUser extends StatelessWidget {
  const DataUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text(
          '0.000',
        ),
        Text(
          'Post',
        ),
      ],
    );
  }
}
