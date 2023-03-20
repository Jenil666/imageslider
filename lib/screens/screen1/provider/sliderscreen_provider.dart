import 'package:flutter/foundation.dart';

class SliderScreenProvider extends ChangeNotifier
{
  int indexofinage = 0;
  List images = [
    "assets/images/img1.jpg",
    "assets/images/img2.jpg",
    "assets/images/img3.jpg",
    "assets/images/img4.jpg",
    "assets/images/img5.jpg",
  ];

  void changeindex(int index)
  {
    indexofinage = index;
    notifyListeners();
  }

}