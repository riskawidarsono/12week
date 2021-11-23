import 'package:flutter/material.dart';

class TugasDelapan extends StatelessWidget {
  const TugasDelapan({Key? key}) : super(key: key);

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
      body: const BodyTugasDelapan(),
    );
  }
}

class BodyTugasDelapan extends StatelessWidget {
  const BodyTugasDelapan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          height: 20,
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
