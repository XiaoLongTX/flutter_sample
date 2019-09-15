import 'package:flutter/material.dart';

///ParentWidgetStateC类:
///管理_active 状态。
///实现 _handleTapboxChanged() ，当盒子被点击时调用。
///当点击盒子并且_active状态改变时调用setState()更新UI。
///
///_TapboxCState 对象:
///管理_highlight 状态。
///GestureDetector监听所有tap事件。当用户点下时，它添加高亮（深绿色边框）；当用户释放时，会移除高亮。
///当按下、抬起、或者取消点击时更新_highlight状态，调用setState()更新UI。
///当点击时，将状态的改变传递给父组件。
///
class TapboxC extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _TapboxCState();
  }
}

class _TapboxCState extends State<TapboxC> {
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
        title: Text('Tapbox C'),
      ),
      body: Center(
        child: Child(
          active: _active,
          onChanged: _handleTapboxChanged,
        ),
      ),
    );
  }
}

class Child extends StatefulWidget {
  final bool active;
  final ValueChanged<bool> onChanged;

  Child({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ChildState();
  }
}

class _ChildState extends State<Child> {
  bool _hightLight = false;

  void _handleTapdown(TapDownDetails details) {
    setState(() {
      _hightLight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _hightLight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _hightLight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      onTapDown: _handleTapdown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      child: new Container(
        child: new Center(
          child: Text(
            widget.active ? 'Active' : 'Inactive',
            style: new TextStyle(fontSize: 32, color: Colors.white),
          ),
        ),
        width: 200,
        height: 200,
        decoration: new BoxDecoration(
            color: widget.active ? Colors.lightGreen[700] : Colors.grey[600],
            border: _hightLight
                ? new Border.all(
                    color: Colors.teal[700],
                    width: 10,
                  )
                : null),
      ),
    );
  }
}
