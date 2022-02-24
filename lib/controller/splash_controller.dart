
import 'package:get/get.dart';

class SplashController extends GetxController{
 var splash = true.obs;
 @override
  void onInit() {
    super.onInit();
    splashing();
  }

  void splashing() async{
    await Future.delayed(const Duration(seconds: 3),() async{
    splash.value = false;
    });
  }
}