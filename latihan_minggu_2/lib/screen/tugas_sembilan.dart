import 'package:flutter/material.dart';

class TugasSembilan extends StatelessWidget {
  const TugasSembilan({Key? key}) : super(key: key);

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
      body: const BodyTugasSembilan(),
    );
  }
}

class BodyTugasSembilan extends StatelessWidget {
  const BodyTugasSembilan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
