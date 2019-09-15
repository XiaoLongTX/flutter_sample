import 'package:flutter/material.dart';

class SwitchAndCheckbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('swich and checkbox'),
      ),
      body: Child(),
    );
  }
}

class Child extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ChildState();
  }
}

class _ChildState extends State<Child> {
  bool _switchSelected = false;
  bool _checkBoxChecked = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "swich: ${_switchSelected ? 'on' : 'off'}",
                style: TextStyle(
                  color: _switchSelected ? Colors.greenAccent : Colors.grey,
                ),
              ),
              Switch(
                  value: _switchSelected,
                  activeColor: Colors.greenAccent,
                  onChanged: (value) {
                    setState(() {
                      _switchSelected = value;
                    });
                  }),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'checkbox: ${_checkBoxChecked ? 'check' : 'uncheck'}',
                style: TextStyle(
                  color: _checkBoxChecked ? Colors.redAccent : Colors.grey,
                ),
              ),
              Checkbox(
                  value: _checkBoxChecked,
                  activeColor: Colors.redAccent,
                  onChanged: (value) {
                    setState(() {
                      _checkBoxChecked = value;
                    });
                  })
            ],
          )
        ],
      ),
    );
  }
}
