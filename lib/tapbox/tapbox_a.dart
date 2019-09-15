import 'package:flutter/material.dart';

///_TapboxAState 类:

///管理TapboxA的状态。
///定义_active：确定盒子的当前颜色的布尔值。
///定义_handleTap()函数，该函数在点击该盒子时更新_active，并调用setState()更新UI。
///实现widget的所有交互式行为。
///

class TapboxA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tapbox A'),
      ),
      body: Center(
        child: Child(),
      ),
    );
  }
}

class Child extends StatefulWidget {
  Child({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ChildState();
  }
}

class _ChildState extends State<Child> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: new BoxDecoration(
          color: _active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}
