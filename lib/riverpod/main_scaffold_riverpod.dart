import 'package:flutter/material.dart';
import '../model/navbar_model/bottom_navbar_model.dart';
import '../view/BottomNavBarPages/account.dart';
import '../view/BottomNavBarPages/home.dart';
import '../view/BottomNavBarPages/search.dart';
import '../view/BottomNavBarPages/shipment.dart';
import '../view/BottomNavBarPages/shopping_bag.dart';

class MainScaffoldRiverpod extends ChangeNotifier {
  List<BottomNavBarModel> items = [
    BottomNavBarModel(image: "assets/icons/Home.svg", title: "Home"),
    BottomNavBarModel(image: "assets/icons/Search.svg", title: "Search"),
    BottomNavBarModel(image: "assets/icons/Shopping.svg", title: "Shopping"),
    BottomNavBarModel(image: "assets/icons/Shipment.svg", title: "Shipment"),
    BottomNavBarModel(image: "assets/icons/Account.svg", title: "Account"),
  ];

  int currentIndex = 0;
  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  Widget body() {
    switch (currentIndex) {
      case 0:
        return Home();
      case 1:
        return Search();
      case 2:
        return ShoppingBag();
      case 3:
        return Shipment();
      case 4:
        return Account();
      default:
        return Home();
    }
  }
}
