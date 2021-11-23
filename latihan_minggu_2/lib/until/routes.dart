import 'package:get/route_manager.dart';
import 'package:latihan_minggu_2/screen/root.dart';

class Routers {
  static final route = [
    GetPage(
      name: '/root',
      page: () => const Root(),
    ),
  ];
}
