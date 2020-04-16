import 'package:flutter/material.dart';
import 'package:flutterdemo/utils/navigator_util.dart';

class ReturnParamsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('我是带着返回值的按钮'),
              onPressed: () {
                NavigatorUtil.goBackWithParams(context, "hhh");
              },
            )
          ],
        ),
      ),
    );
  }
}
