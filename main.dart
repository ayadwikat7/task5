import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData(useMaterial3: false),
      home: Scaffold(
          appBar: AppBar(
            title: Text('flutter'),
            centerTitle: true,
          ),
          body: Center(child: Mybody())),
    );
  }
}

class Mybody extends StatefulWidget {
  @override
  _MybodyState createState() => _MybodyState();
}

class _MybodyState extends State<Mybody> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('print'),
          Text("$count"),
        ],
      ),
      onPressed: () {
        setState(() {
          count++;
        });
        print(count);
      },
    );
  }
}




