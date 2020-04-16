import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterdemo/store/counter_provider.dart';
import 'package:flutterdemo/store/theme_provider.dart';
import 'package:flutterdemo/utils/navigator_util.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: FuncWidget(),
    );
  }
}

class FuncWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            color: Colors.green,
            onPressed: () {
              NavigatorUtil.goParamPage(context, "john", "14", "100", "man");
            },
            child: Text(
              '路由传个普通参数',
              style: TextStyle(color: Colors.white),
            ),
          ),
          RaisedButton(
            onPressed: () {
              NavigatorUtil.goReturnParamsPage(context).then((value) {
                debugPrint('${value.runtimeType}');
                String message;
                message = value.toString();
                message == "null"
                    ? showResultDialog(context, "no data")
                    : showResultDialog(context, message);
              });
            },
            child: Text('传递参数,接收返回值'),
          ),
          RaisedButton(
            onPressed: () {
              Provider.of<ThemeBean>(context, listen: false).change();
            },
            child: Text('切换主题'),
          ),
          Text("This is from counter provider:${Provider.of<CounterProvider>(
            context,
          ).value.toString()}"),
          RaisedButton(
            onPressed: () {
              NavigatorUtil.goProviderCounter(context);
            },
            child: Text('跨页面数据共享'),
          ),
          RaisedButton(
            onPressed: () {
              NavigatorUtil.goListViewDataPage(context);
            },
            child: Text('列表展示demo'),
          ),
          RaisedButton(
            onPressed: () {
              NavigatorUtil.goDialogDemoPage(context);
            },
            child: Text('提示框'),
          ),
          RaisedButton(
            onPressed: () {
              NavigatorUtil.goLoadingDemoPage(context);
            },
            child: Text('loading指示器'),
          ),
        ],
      ),
    );
  }

  void showResultDialog(BuildContext context, String message) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Hello~~'),
            content: Text("$message"),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, right: 8.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: Text("OK"),
                ),
              ),
            ],
          );
        });
  }
}
