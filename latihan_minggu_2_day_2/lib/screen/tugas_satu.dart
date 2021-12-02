import 'package:flutter/material.dart';

class TugasSatu extends StatelessWidget {
  const TugasSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarMain(
        title: 'Text Judul',
      ),
      body: const BodyTugasSatu(),
    );
  }
}

class AppBarMain extends StatelessWidget {
  const AppBarMain({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey,
      leading: Builder(
        builder: (BuildContext context) {
          return const FlutterLogo(
            size: 30,
          );
        },
      ),
      title: Text(title),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert_outlined),
        ),
      ],
    );
  }
}

class BodyTugasSatu extends StatelessWidget {
  const BodyTugasSatu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello World',
        style: TextStyle(
          fontSize: 30,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
