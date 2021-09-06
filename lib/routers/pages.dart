import '/bindings/bindings.dart';
import '/routers/routes.dart';
import '/screens/screens.dart';
import 'package:get/get.dart';

class Pages {
  Pages._();

  static final pages = <GetPage>[
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashScreen(),
      binding: SplashBinding(),
    )
  ];
}
