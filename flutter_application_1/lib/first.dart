import 'package:flutter/material.dart';

class newapp extends StatefulWidget {
  const newapp({super.key});

  @override
  State<newapp> createState() => _newappState();
}

class _newappState extends State<newapp> {
  final GlobalKey cardA = new GlobalKey();
  final GlobalKey cardB = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("widget.title"),
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: ExpansionTile(
            key: cardB,
            leading: CircleAvatar(child: Text('A')),
            title: Text('Tap to Expand!'),
            children: <Widget>[
              Divider(
                thickness: 1.0,
                height: 1.0,
              ),
              Text("hello")
            ],
          ),
        ),
      ]),
    );
  }
}
