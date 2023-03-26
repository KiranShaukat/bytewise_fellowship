import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fellowship Tasks',
      theme: ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Color.fromARGB(255, 219, 219, 219)),
      home: const MyHomePage(title: 'Fellowship Tasks'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Wrap(
          runSpacing: 20,
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.lightBlue[500],
              ),
              width: 280.0,
              height: 60.0,
              padding: const EdgeInsets.all(8.0),
              child: Text('Task 4'),
            ),
            Container(
              alignment: Alignment.center,
              width: 280.0,
              height: 60.0,
              padding: const EdgeInsets.all(8.0),
              child: Text('Task 5'),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Color.fromARGB(255, 34, 130, 225),
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: Colors.lightBlue[500],
              ),
              width: 280.0,
              height: 60.0,
              padding: const EdgeInsets.all(8.0),
              child: Text('Task 6'),
            ),
          ],
        ),
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          tooltip: 'Next Page',
          child: Icon(Icons.arrow_circle_right),
        ));
  }
}
