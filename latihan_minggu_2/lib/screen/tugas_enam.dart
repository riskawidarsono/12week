import 'package:flutter/material.dart';

class TugasEnam extends StatelessWidget {
  const TugasEnam({Key? key}) : super(key: key);

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
      body: const BodyTugasEnam(),
    );
  }
}

class BodyTugasEnam extends StatelessWidget {
  const BodyTugasEnam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
          width: 20,
        ),
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
      ],
    );
  }
}
