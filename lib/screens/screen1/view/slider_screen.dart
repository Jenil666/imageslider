import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:imageslider/screens/screen1/provider/sliderscreen_provider.dart';
import 'package:provider/provider.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  SliderScreenProvider? T, F;

  @override
  Widget build(BuildContext context) {
    T = Provider.of<SliderScreenProvider>(context, listen: true);
    F = Provider.of<SliderScreenProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Image Slider"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              itemCount: 5,
              itemBuilder: (context, index, realIndex) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "${T!.images[index]}",
                    fit: BoxFit.cover,
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: true,
                initialPage: 0,
                height: 200,
                onPageChanged: (index, reason) {
                  F!.changeindex(index);
                },
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: T!
                  .images
                  .asMap()
                  .entries
                  .map((e) => Container(margin:EdgeInsets.symmetric(horizontal: 8),height: 10,width: 10,decoration: BoxDecoration(color: T!.indexofinage==e.key?Colors.black:Colors.black45,shape: BoxShape.circle),),)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
