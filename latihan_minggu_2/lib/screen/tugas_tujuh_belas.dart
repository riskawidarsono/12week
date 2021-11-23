import 'package:flutter/material.dart';

class TugasTujuhBelas extends StatelessWidget {
  const TugasTujuhBelas({Key? key}) : super(key: key);

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
      body: const BodyTugasTujuhBelas(),
    );
  }
}

class BodyTugasTujuhBelas extends StatelessWidget {
  const BodyTugasTujuhBelas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.amber,
          height: 200,
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.red,
          height: 170,
          width: 170,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.blue,
          height: 140,
          width: 140,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          color: Colors.yellow,
          height: 100,
          width: 100,
        ),
      ],
    );
  }
}
