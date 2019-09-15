import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallSnackbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("子树中获取state对象"),
      ),
      body: Center(
        child: Builder(
          builder: (context) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    ScaffoldState _state = context
                        .ancestorStateOfType(TypeMatcher<ScaffoldState>());
                    _state.showSnackBar(
                      SnackBar(
                        content: Text('我是snack bar'),
                      ),
                    );
                  },
                  child: Text('显示snack bar'),
                ),
                RaisedButton(
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text('我是snack bar 2号'),
                      ),
                    );
                  },
                  child: Text('显示snack bar 的简单写法'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
