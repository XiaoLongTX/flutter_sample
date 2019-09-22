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
      ],
    );
  }
}

class TextFieldSample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('焦点控制'),
      ),
      body: Center(
        child: _TextFieldChild2(),
      ),
    );
  }
}

class _TextFieldChild2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextFieldChildState2();
  }
}

class _TextFieldChildState2 extends State<_TextFieldChild2> {
  FocusNode focusNode1 = new FocusNode();
  FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          autofocus: true,
          focusNode: focusNode1, //关联focusNode1
          decoration: InputDecoration(labelText: "input1"),
        ),
        TextField(
          focusNode: focusNode2, //关联focusNode2
          decoration: InputDecoration(labelText: "input2"),
        ),
        Builder(
          builder: (ctx) {
            return Column(
              children: <Widget>[
                RaisedButton(
                  child: Text("移动焦点"),
                  onPressed: () {
                    //将焦点从第一个TextField移到第二个TextField
                    // 这是一种写法 FocusScope.of(context).requestFocus(focusNode2);
                    // 这是第二种写法
                    if (null == focusScopeNode) {
                      focusScopeNode = FocusScope.of(context);
                    }
                    focusScopeNode.requestFocus(focusNode2);
                  },
                ),
                RaisedButton(
                  child: Text("隐藏键盘"),
                  onPressed: () {
                    // 当所有编辑框都失去焦点时键盘就会收起
                    focusNode1.unfocus();
                    focusNode2.unfocus();
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
