import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/widget/dialog_widget.dart';

class DialogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Demo'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                DialogWidget().showDialog(
                    context, '信息', '哈哈哈', DialogType.INFO, () {}, null);
              },
              child: Text('信息'),
            ),
            RaisedButton(
              onPressed: () {
                DialogWidget().showDialog(
                    context, '警告', '哈哈哈', DialogType.WARNING, () {}, null);
              },
              child: Text('警告'),
            ),
            RaisedButton(
              onPressed: () {
                DialogWidget().showDialog(
                    context, '错误', '哈哈哈', DialogType.ERROR, () {}, () {});
              },
              child: Text('错误'),
            )
          ],
        ),
      ),
    );
  }
}
