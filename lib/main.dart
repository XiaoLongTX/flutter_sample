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

void main() => runApp(MyApp());

//当你的iphone模拟器打不开的时候，使用 sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'main page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return PageNum();
                }));
              },
              child: Text(
                '数字示例',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              textColor: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewRouter();
                }));
              },
              child: Text(
                '路由示例',
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CounterWidget();
                }));
              },
              child: Text(
                'state生命周期',
                style: TextStyle(fontSize: 18, color: Colors.yellow),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CallSnackbar();
                }));
              },
              child: Text(
                'SnackBar',
                style: TextStyle(fontSize: 18, color: Colors.green),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return IphoneTheme();
                }));
              },
              child: Text(
                'CupertinoDemo',
                style: TextStyle(fontSize: 18, color: Colors.amber),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TapboxA();
                }));
              },
              child: Text(
                'TapBoxA',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TapboxB();
                }));
              },
              child: Text(
                'TapBoxB',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TapboxC();
                }));
              },
              child: Text(
                'TapBoxC',
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TextSample();
                }));
              },
              child: Text(
                'TextSample',
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ImageSample();
                }));
              },
              child: Text(
                'ImageSample',
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SwitchAndCheckbox();
                }));
              },
              child: Text(
                'SwitchAndCheckbox',
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TextFieldSample();
                }));
              },
              child: Text(
                'TextFieldSample',
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TextFieldSample2();
                }));
              },
              child: Text(
                '焦点控制',
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return TextFieldForm();
                }));
              },
              child: Text(
                'form验证',
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProgressSample();
                }));
              },
              child: Text(
                '进度条',
                style: TextStyle(fontSize: 18, color: Colors.teal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
