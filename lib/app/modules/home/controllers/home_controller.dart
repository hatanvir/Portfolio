import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:portfolio/app/models/portfolio_data.dart';
import 'package:scrollview_observer/scrollview_observer.dart';

class HomeController extends GetxController {
  ScrollController scrollController = ScrollController();
  ListObserverController? observerController;
  var isLoading = false.obs;
  var portfolioData = PortfolioData().obs;

  @override
  void onInit() {
    super.onInit();
    observerController = ListObserverController(controller: scrollController);
    getPortfolioData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void getPortfolioData() async{
    isLoading.value = true;
    var str = await rootBundle.loadString('assets/portfolio_info.json');
    print(str);
    portfolioData.value = portfolioDataFromJson(str);
    isLoading.value = false;
  }
}
