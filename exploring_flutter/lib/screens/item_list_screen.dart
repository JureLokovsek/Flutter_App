import 'package:fimber/fimber.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemListScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ItemListScreenState();
  }
}

class ItemListScreenState extends State<ItemListScreen> {
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
        body: ListView(
          padding: EdgeInsets.all(8.0),
          children: list
              .map((data) => ListTile(
                    onTap: () {
                      Fimber.d("Item clicked: $data");
                    },
                    leading: Icon(Icons.arrow_forward_ios),
                    title: Text(
                      data,
                      style: TextStyle(color: Colors.indigoAccent),
                    ),
                    subtitle: Text(
                      "Subtitle data: $data",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: "Roboto",
                        fontSize: 18.0,
                      ),
                    ),
                    trailing: Icon(Icons.map),
                  ))
              .toList(),
        ));
  }

  List<String> getHugeStringList() {
    List<String> list = List<String>();
    for (int i = 0; i < 100; i++) {
      list.add("Item :: $i");
    }
    return list;
  }
}
