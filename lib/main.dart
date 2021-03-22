import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home()
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  void _zero(){
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          elevation: 3,
          title: Text('Counter',
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.highlight_remove_rounded, size: 30),
            onPressed: _zero,
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: _increment,
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Text("$_counter",
                      style: TextStyle(color: Colors.black, fontSize: 80, fontWeight: FontWeight.w300),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}