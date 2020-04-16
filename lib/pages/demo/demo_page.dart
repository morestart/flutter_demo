import 'package:flutter/material.dart';

class DemoPage extends StatefulWidget {
  final String name;
  final String age;
  final String score;
  final String sex;

  DemoPage({this.name, this.age, this.score, this.sex});

  @override
  _DemoPageState createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('${widget.name}'),
            Text('${widget.age.toString()}'),
            Text('${widget.score.toString()}'),
            Text('${widget.sex}'),
          ],
        ),
      ),
    );
  }
}
