import 'package:fimber/fimber.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:flutter/material.dart';

// TODO: https://www.youtube.com/watch?v=U3b0-ZUWNbQ

class WebSocketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Web Socket Test"),
        ),
        body: WebSocketTest (),
      ),
    );
  }

}

class WebSocketTest extends StatefulWidget {

  final WebSocketChannel channel = IOWebSocketChannel.connect("wss://echo.websocket.org/");

  @override
  State<StatefulWidget> createState() {
    return _WebSocketTestState(channel);
  }

}

class _WebSocketTestState extends State<WebSocketTest> {

  final inputController = TextEditingController();
  List<String> messageList = [];
  WebSocketChannel channel;

  _WebSocketTestState(WebSocketChannel channel) {
    this.channel = channel;
    this.channel.stream.listen((onData) {
      Fimber.d("onData: " + onData);
      messageList.add(onData);
    });


  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: inputController,
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                    decoration: InputDecoration(
                      labelText: "Send message",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    child: Text("Send",
                    style: TextStyle(fontSize: 22.0),
                    ),
                    onPressed: (){
                      if(inputController.text.isNotEmpty){
                        channel.sink.add(inputController.text);
                        inputController.clear();
                      } else {
                        Fimber.d("No value Entered!");
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child:
//            StreamBuilder(
////              stream: widget.channel.stream,
////              builder: (context, stream) {
////                if (stream.hasData) {
////                  messageList.add(stream.data);
////                }
////                return getMassageList();
////              },
////            ),
            getMassageList(),
          ),
        ],
      ),
    );
  }

  ListView getMassageList() {
    List<Widget> listWidget = [];

    for (var value in messageList) {
      listWidget.add(
        ListTile(
          title: Container(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(value,
              style: TextStyle(fontSize: 22),
              ),
            ),
            color: Colors.teal[50],
            height: 60,
          ),
        ),
      );
    }

    return ListView(
      children: listWidget,
    );
  }

  @override
  void dispose() {
    inputController.dispose();
    channel.sink.close();
    super.dispose();
  }


}