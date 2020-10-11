import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/data.dart';
import 'my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider( //                                     <--- MultiProvider
        providers: [
        ChangeNotifierProvider<Data>(create: (context) => Data()),
    ],
    child: MaterialApp(
      home: MyHomePage(),
    ));
  }
}
