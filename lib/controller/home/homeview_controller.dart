import 'package:get/get.dart';
class HomeViewController extends GetxController{
   var selectedIndex = 0.obs;

   void updateSelected({String? index}){
     selectedIndex.value=int.parse(index.toString());
   }
}