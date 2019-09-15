import 'package:flutter/material.dart';

//ParentWidgetState 类:
//
//为TapboxB 管理_active状态。
//实现_handleTapboxChanged()，当盒子被点击时调用的方法。
//当状态改变时，调用setState()更新UI。

//TapboxB 类:
//
//继承StatelessWidget类，因为所有状态都由其父组件处理。
//当检测到点击时，它会通知父组件。

class TapboxB extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TapboxBState();
  }
}

class _TapboxBState extends State<TapboxB> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tapbox b'),
      ),
      body: Center(
        child: new Child(
          active: _active,
          onChanged: _handleTapboxChanged,
        ),
      ),
    );
  }
}

class Child extends StatelessWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  Child({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: Text(
            active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: new BoxDecoration(
          color: active ? Colors.lightGreen[700] : Colors.grey[600],
        ),
      ),
    );
  }
}
