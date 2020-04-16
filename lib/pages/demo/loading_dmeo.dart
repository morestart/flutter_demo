import 'package:flutter/material.dart';

class LoadingDemoPage extends StatefulWidget {
  @override
  _LoadingDemoPageState createState() => _LoadingDemoPageState();
}

class _LoadingDemoPageState extends State<LoadingDemoPage> {
  bool loading = true;
  @override
  void initState() {
    super.initState();
    // 延时5s设置状态为false 显示其他内容
    Future.delayed(Duration(seconds: 5)).then((_) {
      setState(() {
        loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('模拟加载'),
      ),
      body: loading == true
          ? Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: Text('加载完成'),
            ),
    );
  }
}
