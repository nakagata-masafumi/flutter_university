import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  NextPage(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("NextPage"),
      ),
      body: Container(
        height: double.infinity,
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(name),
            Center(
              child: RaisedButton(
                  child: Text('Back'),
                  onPressed: () {
                    Navigator.pop(context,'Yahuuu');
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
