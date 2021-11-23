import 'package:flutter/material.dart';

class TugasDua extends StatelessWidget {
  const TugasDua({Key? key}) : super(key: key);

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
      body: const BodyTugasDua(),
    );
  }
}

class BodyTugasDua extends StatelessWidget {
  const BodyTugasDua({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: FlutterLogo(
        size: 100,
      ),
    );
  }
}
