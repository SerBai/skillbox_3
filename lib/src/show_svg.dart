// Flutter imports:
import 'package:flutter/material.dart';

Widget showSvg(String textInfo, Widget svgWidget) {
  return Column(
    children: [
      Text(
        textInfo,
        style: const TextStyle(fontSize: 20),
      ),
      svgWidget,
    ],
  );
}
