import 'package:flutter/material.dart';

class TugasTigabelas extends StatelessWidget {
  const TugasTigabelas({Key? key}) : super(key: key);

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
      body: const BodyTugasTigabelas(),
    );
  }
}

class BodyTugasTigabelas extends StatelessWidget {
  const BodyTugasTigabelas({Key? key}) : super(key: key);

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
        Center(
          child: Container(
            child: const FlutterLogo(
              size: 100,
            ),
          ),
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
