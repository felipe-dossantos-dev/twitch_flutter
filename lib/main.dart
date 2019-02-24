import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final Color dark = HexColor('#19171C');
final Color purpleBackground = HexColor('#1D1A24');
final Color purpleBottom = HexColor('#2F2942');
final Color purpleCard = HexColor('#25212E'); // top

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        child: Center(
          child: ListView(
            children: <Widget>[
              StreamCard(),
              StreamCard(),
              StreamCard(),
            ],
          ),
        ),
        color: purpleBackground,
      ),
    );
  }
}

class StreamCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: purpleCard,
        width: 200.0,
        height: 200.0,
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
