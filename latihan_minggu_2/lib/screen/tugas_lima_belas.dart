import 'package:flutter/material.dart';

class TugasLimaBelas extends StatelessWidget {
  const TugasLimaBelas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return const FlutterLogo(
              size: 2,
            );
          },
        ),
        title: const Text('Text Judul'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.ac_unit),
          ),
        ],
      ),
      body: const BodyTugasLimaBelas(),
    );
  }
}

class BodyTugasLimaBelas extends StatelessWidget {
  const BodyTugasLimaBelas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 24,
      ),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 200,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Hello 1',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              color: Colors.yellow,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Hello 2',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 200,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Hello 3',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ],
    );
  }
}
