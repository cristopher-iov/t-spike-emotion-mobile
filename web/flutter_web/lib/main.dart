import 'package:flutter/material.dart';

import 'widgets/homepage.dart';
import 'example.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/example': (context) => const MyApp(),
      },
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}