import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  final int initValue;

  const CounterWidget({
    Key key,
    this.initValue: 0,
  });

  @override
  State<StatefulWidget> createState() {
    return _CounterWidgetState();
  }
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print("init state");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: () => setState(() => ++_counter),
          child: Text('$_counter'),
        ),
      ),
    );
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('reassemble');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }
}
