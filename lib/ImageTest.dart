import 'package:flutter/material.dart';

class ImageTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Image and Icon'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Image(
              image: AssetImage("images/my_icon.png"),
              width: 100.0,
            ),
            Image.asset("images/my_icon.png", width: 100.0,),
            Image(
              image: NetworkImage("https://avatars2.githubusercontent.com/u/20411648?s=460&v=4"),
              width: 100.0,
            )
          ],
        ),
      ),
    );
  }
}
