import 'package:flutter/material.dart';

class TugasEnamBelas extends StatelessWidget {
  const TugasEnamBelas({Key? key}) : super(key: key);

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
      body: const BodyTugasEnamBelas(),
    );
  }
}

class BodyTugasEnamBelas extends StatelessWidget {
  const BodyTugasEnamBelas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        vertical: 24,
      ),
      children: [
        Column(
          children: [
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 24,
                ),
                children: [
                  Row(
                    children: [
                      Container(
                        color: Colors.amber,
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.amber,
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.amber,
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.amber,
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.amber,
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.amber,
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        color: Colors.amber,
                        height: 50,
                        width: 50,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Column(
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
            ),
          ],
        ),
      ],
    );
  }
}
