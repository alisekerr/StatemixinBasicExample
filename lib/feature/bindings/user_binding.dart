import 'package:get/get.dart';
import 'package:statemixin_getx/feature/controllers/user_controller.dart';

class UserBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserController>(() => UserController());
  }
}
