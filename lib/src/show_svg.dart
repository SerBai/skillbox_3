// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

const String localText = "SVG from local:";
final Widget svgLocal = SvgPicture.asset(
  'assets/svg/spherical-maze.svg',
  height: 300,
);

const String networkText = "SVG from network:";
final Widget svgNetwork = SvgPicture.network(
  'https://raw.githubusercontent.com/dnfield/flutter_svg/7d374d7107561cbd906d7c0ca26fef02cc01e7c8/example/assets/flutter_logo.svg',
  height: 300,
  placeholderBuilder: (BuildContext context) => Container(
      padding: const EdgeInsets.all(50.0),
      child: const CircularProgressIndicator()),
);

Widget showSvg(String localText, Widget svgWidget) {
  return Column(
    children: [
      Text(
        localText,
        style: const TextStyle(fontSize: 20),
      ),
      svgWidget,
    ],
  );
}
