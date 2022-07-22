import 'package:flutter/material.dart';

class StateFulPage extends StatefulWidget {
  const StateFulPage({Key? key}) : super(key: key);

  @override
  State<StateFulPage> createState() => _StateFulPageState();
}

class _StateFulPageState extends State<StateFulPage> {
  String name = "Wave Bowonrana";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Flutter title"),
      ),
      body: Column(
        children: [

          TextField(
            onChanged: (value){setState((){name = value;});
              print("Static is called $name");
              },
          ),
          Text("Stateful Page"),
          Text("Welcome To Stateful Page Mr.$name")
        ],
      ),
    );
  }
}


