import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:statemixin_getx/feature/providers/user_provider.dart';

class UserController extends GetxController with StateMixin<List<dynamic>>{

@override
void onInit() {
  UserProvider().getUser().then((resp) {
    change(resp, status: RxStatus.success());
  }, onError: (err) {
    debugPrint(err);
  change(
    null,
    status: RxStatus.error('Error get data'),
  );
  super.onInit();
  });
}

}