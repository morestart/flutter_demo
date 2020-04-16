import 'package:flutter/material.dart';
import 'package:flutterdemo/store/list_data_provider.dart';
import 'package:provider/provider.dart';

class ListViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List data = Provider.of<ListDataProvider>(context).getList();

    return Scaffold(
      appBar: AppBar(
        title: Text('列表展示'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${data[index]}'),
          );
        },
        itemCount: data.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ListDataProvider>(context, listen: false).addList(100);
          print('add data');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
