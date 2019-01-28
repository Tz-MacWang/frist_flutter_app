import 'package:flutter/material.dart';

class TextTest extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("TextTest"),
      ),
      body: Container(
        child: Column(
            children: <Widget>[
              Text("Hello World!", textAlign: TextAlign.center,),
              Text("Hello World!" *6, textAlign: TextAlign.center,),
              Text("Hello World! I'm Jack." *4, maxLines: 1, overflow: TextOverflow.ellipsis,),
              Text('Hello World!', textScaleFactor: 1.5,),
              Text("Hello World!",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18.0,
                  height: 1.2,  // 行高
                  fontFamily: "Courier",
                  background: new Paint()..color=Colors.yellow,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed
                ),
              ),
              Text.rich(TextSpan(
                children: [
                  TextSpan(text: "Home: "),
                  TextSpan(text: "https://flutterchina.club",
                    style: TextStyle(color: Colors.blue),
//                    recognizer: _tapRecognize
                  )
                ]
              )),
              DefaultTextStyle(
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.start,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Hello World"),
                    Text("I am Jack"),
                    Text("I am Jack",
                      style: TextStyle(
                        inherit: false,
                        color: Colors.grey
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
      ),
    );
  }
}