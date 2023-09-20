import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ReceivedColor.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ColorProvider(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final colorProvider = Provider.of<ColorProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: colorProvider.containerColor,
              ),
           
              ElevatedButton(onPressed: (){
                colorProvider.ChngColor();
              },
               child: Icon(Icons.light))
            ],
          ),
        ),
      )),
    );
  }
}
