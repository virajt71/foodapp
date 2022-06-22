import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.6;
  static double pageViewContainerHeight = screenHeight / 3.78;
  static double pageViewTextContainerHeight = screenHeight / 6.93;

  // dynamic height padding and margin
  static double height10 = screenHeight / 83.2;
  static double height15 = screenHeight / 55.4;
  static double height20 = screenHeight / 41.6;
  static double heigth30 = screenHeight / 27.73;
  static double heigth45 = screenHeight / 18.48;

  // dynamic width padding and margin
  static double width10 = screenHeight / 83.2;
  static double width15 = screenHeight / 55.4;
  static double width20 = screenHeight / 41.6;
  static double width30 = screenHeight / 27.73;

  // font size
  static double font20 = screenHeight / 41.6;

  // border radious
  static double radius5 = screenHeight / 166.4;
  static double radius15 = screenHeight / 55.4;
  static double radius20 = screenHeight / 41.6;
  static double radius30 = screenHeight / 27.73;

  // icon size
  static double iconSize24 = screenHeight / 34.66;

  // list view size
  static double listViewImgSize = screenHeight/6.93;
  static double listViewTextContSize = screenHeight/8.32;  
}
