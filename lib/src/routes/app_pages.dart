import 'package:get/get.dart';
import 'package:mobile_ecommerce/src/home/home_view.dart';
import 'package:mobile_ecommerce/src/search_screen/search_screen_view.dart';

import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.home,
      page: () => HomeView(),
      binding: HomeViewBinding(),
    ),
    GetPage(
      name: Routes.searchScreen,
      page: () => SearchScreenView(),
      binding: SearchScreenViewBinding(),
    )
  ];
}
