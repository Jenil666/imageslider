import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imageslider/screens/screen1/provider/sliderscreen_provider.dart';
import 'package:imageslider/screens/screen1/view/slider_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SliderScreenProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {'/': (context) => SliderScreen()},
      ),
    ),
  );
}
