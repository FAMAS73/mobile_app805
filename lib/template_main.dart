import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context)=> MaterialApp(
      home: HomePage()
  );
}
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => HomePageState();
}
class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text(''),),
      body: Center(
        child: Column(),
      )

  );
}