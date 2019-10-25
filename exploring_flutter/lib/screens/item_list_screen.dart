import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ItemListState();
  }
}

class ItemListState extends State<ItemList> {

  List<String> list;

  @override
  void initState() {
    super.initState();
    list = getHugeStringList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          title: Text("Item List Screen"),
        ),
        body:ListView.builder(
                itemCount: list.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(list[index]);
                }
            )
    );
  }

  List<String> getHugeStringList() {
    List<String> list = List<String>();
    for (int i = 0; i < 100; i++) {
      list.add("Item :: $i");
    }
    return list;
  }


}






