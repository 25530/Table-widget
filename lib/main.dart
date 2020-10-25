import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Testpage(title: 'mijn test page'),
    );
  }
}

class Testpage extends StatefulWidget {
  Testpage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _TestpageState createState() => _TestpageState();
}

class _TestpageState extends State<Testpage> 
{
  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
      (
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          padding: const EdgeInsets.all(12),
          children: <StatelessWidget>[
            Container
            (
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0)),
              color: Colors.red[100],
              height: 50,
              child: const Center(child: Text('Iets')),
            ),
            Container(
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0)),
              color: Colors.blue[150],
              height: 50,
              child: const Center(child: Text('Tekst')),
            ),
            Container(
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(50.0)),
              color: Colors.yellow[200],
              height: 50,
              child: const Center(child: Text('Dit is geel')),
            ),
          ],
        ));
  }
}
