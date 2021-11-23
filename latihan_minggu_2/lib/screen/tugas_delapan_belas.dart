import 'package:flutter/material.dart';

class TugasDelapanBelas extends StatelessWidget {
  const TugasDelapanBelas({Key? key}) : super(key: key);

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
    return Center(
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 300,
              width: 300,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              color: Colors.red,
              height: 150,
              width: 150,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              color: Colors.blue,
              height: 140,
              width: 140,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              color: Colors.yellow,
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
