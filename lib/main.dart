import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(child: Text("Ask me Anything"),),
        backgroundColor: Colors.blueAccent,
      ),
      body: BallPage(),
    )

  ),
  );
}
class BallPage extends StatefulWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  var ballno;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/ball$ballno.png') ,
            onPressed: (){
                setState(() {
                  ballno=Random().nextInt(5)+1;
                });
                print("yes");
            },),),
        ],
      ),
    );
  }
}


