import 'package:flutter/material.dart';

class ButtonTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonTest'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text("RaisedButton"),
                onPressed: () => {},
              ),
              FlatButton(
                child: Text("FlatButton"),
                onPressed: () => {},
              ),
              OutlineButton(
                child: Text("OutlineButton"),
                onPressed: () => {},
              ),
              IconButton(
                icon: Icon(Icons.thumb_up),
                onPressed: () => {},
              ),
              FlatButton(
                color: Colors.blue,
                highlightColor: Colors.blue[700],
                colorBrightness: Brightness.dark,
                splashColor: Colors.grey,
                child: Text("自定义样式按钮"),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                onPressed: () => {},
              )
            ],
          ),
        )
      ),
    );
  }
}