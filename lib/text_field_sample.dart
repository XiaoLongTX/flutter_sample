import 'package:flutter/material.dart';

class TextFieldSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFieldSample'),
      ),
      body: Center(
        child: _TextFieldChild(),
      ),
    );
  }
}

class _TextFieldChild extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFieldChildState();
  }
}

class _TextFieldChildState extends State<_TextFieldChild> {
  TextEditingController _sampleController = TextEditingController();
  TextEditingController _selectionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _sampleController.addListener(() {
      print(_sampleController.text);
    });

    _selectionController.text = "hello world!";
    _selectionController.selection = TextSelection(
      baseOffset: 2,
      extentOffset: _selectionController.text.length,
    );

    FocusNode focusNode1 = new FocusNode();
    FocusNode focusNode2 = new FocusNode();
    FocusScopeNode focusScopeNode;

    return Column(
      children: <Widget>[
        TextField(
          autofocus: true,
          decoration: InputDecoration(
            labelText: '控制台输出:',
            hintText: '这里输入的字符会在控制台输出',
            prefixIcon: Icon(Icons.person),
          ),
          keyboardType: TextInputType.phone,
          controller: _sampleController,
        ),
        TextField(
          autofocus: true,
          decoration: InputDecoration(
            labelText: '默认选中:',
            hintText: '这里会默认选中一段字符串',
            prefixIcon: Icon(Icons.person),
          ),
          keyboardType: TextInputType.phone,
          controller: _selectionController,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: '密码',
            hintText: '请输入密码',
            prefixIcon: Icon(Icons.lock),
          ),
          obscureText: true,
        ),
        TextField(
          autofocus: true,
          focusNode: focusNode1,
          decoration: InputDecoration(labelText: 'input1'),
        ),
        TextField(
          focusNode: focusNode2,
          decoration: InputDecoration(labelText: 'input2'),
        ),
        Builder(
          builder: (ctx) {
            return Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: () {
                    // 将焦点从第一个TextField移到第二个TextField
                    // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                    // 这是第二种写法
                    if (null == focusScopeNode) {
                      focusScopeNode = FocusScope.of(context);
                    }
                    focusScopeNode.requestFocus(focusNode2);
                  },
                  child: Text('移动焦点'),
                ),
                RaisedButton(
                  onPressed: () {
                    focusNode1.unfocus();
                    focusNode2.unfocus();
                  },
                  child: Text('隐藏键盘'),
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
