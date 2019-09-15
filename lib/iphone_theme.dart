import 'package:flutter/cupertino.dart';

class IphoneTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Demo'),
      ),
      child: Center(
        child: CupertinoButton(
          color: CupertinoColors.activeOrange,
          child: Text('press'),
          onPressed: (){},
        ),
      ),
    );
  }
}
