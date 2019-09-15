import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('new router'),
      ),
      body: Center(
        child: Text('this is a new router'),
      ),
    );
  }
}
