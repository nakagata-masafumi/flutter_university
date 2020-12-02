import 'package:flutter/material.dart';
import 'package:flutter_university/next_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SampleText"),
        actions:<Widget>[
         Icon(Icons.add),
         Icon(Icons.share),
         Icon(Icons.ac_unit),
        ] ,
      ),
      body: Center(
        child:RaisedButton(
         child:Text('次へ') ,
          onPressed: () async{
           //ここを押したら反応するコードを書く
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NextPage('Yuan')),
            );
            print(result);
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
