import 'package:flutter/material.dart';
import 'package:flutter_states/pages/page1_page.dart';
import 'package:flutter_states/pages/page2_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'page1',
      routes: {
        'page1': (context) => const Page1(),
        'page2': (context) => const Page2(),
      },
    );
  }
}
