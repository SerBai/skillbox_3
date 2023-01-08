// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';

// Project imports:
import 'package:skillbox_3/src/show_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
          ),
          items: [
            showSvg(localText, svgLocal),
            showSvg(networkText, svgNetwork),
          ],
        ),
      ),
    );
  }
}
