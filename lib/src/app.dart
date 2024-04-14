import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mobile_ecommerce/src/routes/app_pages.dart';
import 'package:mobile_ecommerce/src/routes/app_routes.dart';
import 'settings/settings_controller.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.settingsController,
  }) : super(key: key);

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Define the list of locales your app supports.
      locale: const Locale('en', ''), // English, no country code

      // Use AppLocalizations to configure the correct application title
      // depending on the user's locale.
      //
      // The appTitle is defined in .arb files found in the localization
      // directory.
      title: 'appTitle'.tr,

      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      // SettingsController to display the correct theme.
      theme: ThemeData(),
      darkTheme: ThemeData.light(),
      themeMode: settingsController.themeMode,

      // Define a function to handle named routes in order to support
      // Flutter web url navigation and deep linking.

      getPages: AppPages.routes,
      initialRoute: Routes.home,
    );
  }
}
