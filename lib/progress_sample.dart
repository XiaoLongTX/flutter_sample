import 'package:flutter/material.dart';

class ProgressSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Sample'),
      ),
      body: _ProgressBar(),
    );
  }
}

class _ProgressBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProgressBarState();
  }
}

class _ProgressBarState extends State<_ProgressBar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: LinearProgressIndicator(
              //模糊进度条，一直执行动画
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation(Colors.blue),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: LinearProgressIndicator(
              //进度条显示50%
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              value: .5,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: CircularProgressIndicator(
              // 模糊进度条(会执行一个旋转动画)
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: CircularProgressIndicator(
              //进度条显示50%，会显示一个半圆
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              value: .5,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              // 线性进度条高度指定为3
              height: 3,
              child: LinearProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: .5,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              // 圆形进度条直径指定为100
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                backgroundColor: Colors.grey[200],
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                value: .7,
              ),
            ),
          ),
          SizedBox(
            //注意，如果CircularProgressIndicator显示空间的宽高不同，则会显示为椭圆
            height: 100,
            width: 130,
            child: CircularProgressIndicator(
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation(Colors.blue),
              value: .7,
            ),
          ),
        ],
      ),
    );
  }
}
