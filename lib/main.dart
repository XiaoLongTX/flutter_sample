import 'package:flutter/material.dart';
import 'package:flutter_sample/call_snackbar.dart';
import 'package:flutter_sample/image_sample.dart';
import 'package:flutter_sample/iphone_theme.dart';
import 'package:flutter_sample/new_router.dart';
import 'package:flutter_sample/page_num.dart';
import 'package:flutter_sample/progress_sample.dart';
import 'package:flutter_sample/state_sample.dart';
import 'package:flutter_sample/switch_checkbox_sample.dart';
import 'package:flutter_sample/tapbox/tapbox_a.dart';
import 'package:flutter_sample/tapbox/tapbox_b.dart';
import 'package:flutter_sample/tapbox/tapbox_c.dart';
import 'package:flutter_sample/textfield/text_field_sample.dart';
import 'package:flutter_sample/text_sample.dart';
import 'package:flutter_sample/textfield/textfield_form.dart';
import 'package:flutter_sample/utils.dart';

void main() => runApp(MyApp());

var myRoutes = Map<String, WidgetBuilder>();

//当你的iphone模拟器打不开的时候，使用 sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    myRoutes = {
      "数字示例": (context) => PageNum(),
      "路由示例": (context) => NewRouter(),
      "state生命周期": (context) => CounterWidget(),
      "SnackBar": (context) => CallSnackbar(),
      "CupertinoDemo": (context) => IphoneTheme(),
      "TapBoxA": (context) => TapboxA(),
      "TapboxB": (context) => TapboxB(),
      "TapBoxC": (context) => TapboxC(),
      "TextSample": (context) => TextSample(),
      "ImageSample": (context) => ImageSample(),
      "SwitchAndCheckbox": (context) => SwitchAndCheckbox(),
      "TextFieldSample": (context) => TextFieldSample(),
      "焦点控制": (context) => TextFieldSample2(),
      "form验证": (context) => TextFieldForm(),
      "进度条": (context) => ProgressSample(),
      "form验证": (context) => TextFieldForm(),
    };
    return new MaterialApp(
      title: 'main page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: myRoutes,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("主页"),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          var routeName = myRoutes.keys.toList()[index];
          return FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, routeName);
            },
            child: Text(
              routeName,
              style: TextStyle(fontSize: 18, color: Utils.getRandomColor()),
            ),
          );
        },
        itemCount: myRoutes.length,
      ),
    );
  }
}
