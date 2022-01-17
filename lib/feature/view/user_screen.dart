import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statemixin_getx/feature/controllers/user_controller.dart';

class UserScreen extends GetView<UserController> {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
       final UserController controller = Get.put(UserController());
    return Scaffold(
      appBar: AppBar(title: const Text('User List')),
      body: controller.obx(
          (state) => ListView.builder(
            physics: const BouncingScrollPhysics(),
              itemCount: state!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              NetworkImage(state[index]["picture"]["large"]),
                        ),
                        title: Text(state[index]["name"]["title"] +
                            " " +
                            state[index]["name"]["first"] +
                            " " +
                            state[index]["name"]["last"]),
                        subtitle: Text(state[index]["email"]),
                      )
                    ],
                  ),
                );
              }),
          onError: (onError) => const Center(
                child: Text("Error"),
              )),
    );
  }
}
