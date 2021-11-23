import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan_minggu_2/screen/root.dart';
import 'package:latihan_minggu_2/until/routes.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'latihan',
      home: const Root(),
      getPages: Routers.route,
    );
  }
}
