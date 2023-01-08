// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/svg.dart';

// Project imports:
import 'package:skillbox_3/src/show_svg.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String localText = "SVG from local:";
  final Widget svgLocal = SvgPicture.asset(
    'assets/svg/spherical-maze.svg',
    height: 300,
  );

  final String networkText = "SVG from network:";
  final Widget svgNetwork = SvgPicture.network(
    'https://raw.githubusercontent.com/dnfield/flutter_svg/7d374d7107561cbd906d7c0ca26fef02cc01e7c8/example/assets/flutter_logo.svg',
    height: 300,
    placeholderBuilder: (BuildContext context) => Container(
        padding: const EdgeInsets.all(50.0),
        child: const CircularProgressIndicator()),
  );

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
