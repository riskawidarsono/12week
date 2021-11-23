import 'package:flutter/material.dart';

class TugasDuaBelas extends StatelessWidget {
  const TugasDuaBelas({Key? key}) : super(key: key);

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
      body: const BodyTugasDuaBelas(),
    );
  }
}

class BodyTugasDuaBelas extends StatelessWidget {
  const BodyTugasDuaBelas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: const Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 100,
              width: 100,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Hello',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
