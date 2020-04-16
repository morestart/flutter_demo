import 'package:flutter/material.dart';
import 'package:flutterdemo/store/counter_provider.dart';
import 'package:provider/provider.dart';

class ProviderCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider counter'),
      ),
      body: Center(
        child: Text('data: ${Provider.of<CounterProvider>(context).value}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<CounterProvider>(context, listen: false).changeNumber();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
