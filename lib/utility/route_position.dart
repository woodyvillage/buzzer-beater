import 'package:flutter/foundation.dart';

class RoutePosition extends ChangeNotifier {
  int selectedRoute = 0;
  int selectedFacade = 0;

  void changed(int index) {
    selectedRoute = index;
    if (kDebugMode) {
      print("changed:$selectedRoute");
    }
    notifyListeners();
  }

  void switched(int index) {
    selectedFacade = index;
    if (kDebugMode) {
      print("switched:$selectedFacade");
    }
    notifyListeners();
  }
}
