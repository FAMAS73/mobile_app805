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
  var _fontWeight = FontWeight.normal;
  var _fontStyle = FontStyle.normal;
  var _switchWeight = false;
  var _switchStyle = false;
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text('Switch'),),
      body: Center(
        child: Column(children: [
          SizedBox(height: 30,),
          Text('Flutter',
            textScaleFactor: 5.0,
            style: TextStyle(
                fontWeight: _fontWeight,
                fontStyle: _fontStyle
            ),),
          SizedBox(height: 30,),
          rowSwitchWeight(),
          SizedBox(height: 30,),
          rowSwitchStyle(),
        ],),
      )

  );

  Widget rowSwitchWeight() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Bold'),
      Switch(
        value: _switchWeight,
        onChanged: (isOn) => setState(() {
          _switchWeight = isOn;
          _fontWeight = isOn ? FontWeight.bold : FontWeight.normal;
        }
        ),
      ),
    ],
  );

  Widget rowSwitchStyle() => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Italic'),
      Switch(
        value: _switchStyle,
        onChanged: (isOn) => setState(() {
          _switchStyle = isOn;
          _fontStyle = isOn ? FontStyle.italic : FontStyle.normal;
        }
        ),
      ),
    ],
  );
}