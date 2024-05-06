import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:scrollview_observer/scrollview_observer.dart';

class HomeController extends GetxController {
  ScrollController scrollController = ScrollController();
  ListObserverController? observerController;


  @override
  void onInit() {
    super.onInit();
    observerController = ListObserverController(controller: scrollController);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
