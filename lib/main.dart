// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skillbox 3',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Skillbox 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const String localText = "SVG from local:";
final Widget svgLocal = SvgPicture.asset(
  'assets/svg/spherical-maze.svg',
  height: 300,
);

const String networkText = "SVG from network:";
final Widget svgNetwork = SvgPicture.network(
  'https://raw.githubusercontent.com/dnfield/flutter_svg/7d374d7107561cbd906d7c0ca26fef02cc01e7c8/example/assets/flutter_logo.svg',
  height: 300,
  semanticsLabel: 'A shark?!',
  placeholderBuilder: (BuildContext context) => Container(
      padding: const EdgeInsets.all(50.0),
      child: const CircularProgressIndicator()),
);

Widget svg(String localText, Widget svgWidget) {
  return Column(
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          localText,
          style: const TextStyle(fontSize: 20),
        ),
      ),
      svgWidget,
    ],
  );
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
            scrollDirection: Axis.horizontal,
            reverse: false,
          ),
          items: [
            svg(localText, svgLocal),
            svg(networkText, svgNetwork),
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        i,
                      ],
                    ));
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
