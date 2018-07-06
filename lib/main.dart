import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(home: new MyCard());
  }
}

class MyCard extends StatelessWidget {
  List cards = new List.generate(10, (i) => new CustomCard()).toList();
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Cards en Flutter'),
        backgroundColor: new Color(0xFF673AB7),
      ),
      body: new Container(
        child: new ListView(
          children: cards,
        )
      )
    );
  }
}

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Column(
        children: <Widget>[
          new Image.network('https://cde.peru.com//ima/0/0/6/9/2/692555/611x458/lima.jpg'),
          new Container(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              '''Wait a minute. Wait a minute, Doc. Uhhh...Are you telling me that you built a time machine...out of a DeLorean?! Whoa. This is heavy..''',
              softWrap: true,
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(7.0),
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new FlatButton.icon(
                  icon: const Icon(Icons.favorite, size: 18.0, color: Colors.redAccent),
                  label: const Text('Like'),
                  onPressed: () {
                    print('Me encanta');
                  },
                ),
                new FlatButton.icon(
                  icon: const Icon(Icons.comment, size: 18.0, color: Colors.brown),
                  label: const Text('Comment'),
                  onPressed: () {
                    print('Comenta algo');
                  },
                ),
                new FlatButton.icon(
                  icon: const Icon(Icons.share, size: 18.0, color: Colors.blueAccent),
                  label: const Text('Share'),
                  onPressed: () {
                    print('Compartelo');
                  },
                )
              ],
            )
          )
        ],
      ),
    );
  }
}
