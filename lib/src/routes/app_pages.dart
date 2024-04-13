import 'package:get/get.dart';
import 'package:mobile_ecommerce/src/home/home_view.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => HomeView(),
    ),
  ];
}
