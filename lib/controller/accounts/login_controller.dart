import 'dart:convert';

import 'package:isokapp/services/api.dart';
import 'package:isokapp/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var loading = false.obs;
  late TextEditingController emailController, passwordController;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  void callLogin() async {
    loading.value = true;
    if (emailController.text == '' || passwordController.text == '') {
      Get.snackbar('validation Error', 'Please enter email or password',
          backgroundColor: Colors.green);
      loading.value = false;
    } else {
      Get.to(() => const HomeScreen());
    }
  }

  void getAllPost() async {
    var response = await ApiCall().getData('public/v2/posts');
    var res = jsonDecode(response.toString());
    print(res);
  }
}
