import 'package:flutter/material.dart';

void main() => runApp(MyApp());

final Color dark = HexColor('#19171C');
final Color purpleBackground = HexColor('#1D1A24');
final Color purpleBottom = HexColor('#2F2942');
final Color purpleCard = HexColor('#25212E'); // top
final Color tagBackground = HexColor('#353239');

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
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
      child: Container(
        height: 350.0,
        decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black87,
                offset: Offset(-1.0, 2.0),
                blurRadius: 80.0,
              ),
            ],
            color: purpleCard,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[StreamCardImage(), StreamCardInfo()],
        ),
      ),
    );
  }
}

class StreamCardInfo extends StatelessWidget {
  const StreamCardInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 24.0),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: 60.0,
                height: 60.0,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text('ESL_CSGO',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            decoration: TextDecoration.none)),
                    Text('LIVE: FaZe Clan VS Cloud9 [Cache] - IEM Katowice',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            decoration: TextDecoration.none)),
                    Text('Counter Strike - Global Offensive',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            decoration: TextDecoration.none)),
                  ],
                ),
              )
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: Container(
                  color: tagBackground,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('English',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            decoration: TextDecoration.none)),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, top: 16.0, bottom: 16.0),
                child: Container(
                  color: tagBackground,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Map: Dust II',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            decoration: TextDecoration.none)),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class StreamCardImage extends StatelessWidget {
  const StreamCardImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: <Widget>[
          Container(
            height: 225.0,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('images/cs-go.jpeg'),
            )),
          ),
          Positioned(
            bottom: 12.0,
            left: 16.0,
            child: StreamCardCountViewers(),
          )
        ],
      ),
    );
  }
}

class StreamCardCountViewers extends StatelessWidget {
  const StreamCardCountViewers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 2.0),
          child: Container(
            width: 12.0,
            height: 12.0,
            decoration: BoxDecoration(
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(50.0)),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 6.0),
          child: Text(
            '236.6k Viewers',
            style: TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                decoration: TextDecoration.none),
          ),
        )
      ],
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
