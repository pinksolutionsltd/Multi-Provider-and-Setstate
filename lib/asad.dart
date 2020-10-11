import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/data.dart';
import 'package:flutter/material.dart';

class Asad extends StatefulWidget {
  @override
  _AsadState createState() => _AsadState();
}

class _AsadState extends State<Asad> {
  @override
  Widget build(BuildContext context) {

    final providerData = Provider.of<Data>(context);

    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [

          Text(providerData.value.toString(), style: TextStyle(fontSize: 44.0, color: Colors.pink),),


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
            child: Text('Back'),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
      ),

    );
  }
}

