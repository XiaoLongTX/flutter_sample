import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TextSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Text left',
              textAlign: TextAlign.left,
            ),
            Text('Text *2' * 2),
            Text(
              'Text max line 1,ellipsis,省略号在最后的情况' * 2,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'Text size * 1.5',
              textScaleFactor: 1.5,
            ),
            Text(
              'this text is center' * 6,
              textAlign: TextAlign.center,
            ),
            Text(
              "Text use TextStyle",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,
                  fontFamily: "Courier",
                  background: new Paint()..color = Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed),
            ),
            Text.rich(TextSpan(children: [
              TextSpan(text: "Home: "),
              TextSpan(
                text: "https://www.tencent.com",
                style: TextStyle(color: Colors.blue),
              ),
            ])),
          ],
        ),
      ),
    );
  }
}