import 'package:get/get.dart';
import 'package:statemixin_getx/feature/view/user_screen.dart';

part 'app_routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () =>  const UserScreen(),
    )
  ];
}
