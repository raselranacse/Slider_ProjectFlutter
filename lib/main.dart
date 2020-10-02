import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: _Homepage(),
    );
  }
}

class _Homepage extends StatefulWidget {
  @override
  __HomepageState createState() => __HomepageState();
}

class __HomepageState extends State<_Homepage> {
  var _value = 10.0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Slider in Flutter",
              style: TextStyle(fontSize: _value),
            ),
            SizedBox(height: 20),
            Slider(
                min: 10,
                max: 40,
                activeColor: Colors.blue,
                inactiveColor: Colors.black,
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                    print(_value);
                  });
                })
          ],
        ),
      ),
    );
  }
}
