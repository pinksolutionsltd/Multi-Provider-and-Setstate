import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/asad.dart';
import 'package:providerexample/data.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {

    final providerData = Provider.of<Data>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.tealAccent,
        body: Column(
          children: [

            Text(providerData.value.toString(), style: TextStyle(fontSize: 34.0, color: Colors.purple),),
            RaisedButton(
              child: Text('Click',style: TextStyle(fontSize: 34.0, color: Colors.purple),),
              onPressed: (){
                setState(() {
                  providerData.Increment();
                });
              },
            ),

            Divider(height: 20.0,),

            RaisedButton(
              child: Text('Go Ahead'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Asad()),);
              },
            ),
          ],
        ),
      ),
    );
  }
}
