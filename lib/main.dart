import 'package:flutter/material.dart';
import 'package:flutter_states/pages/page1_page.dart';
import 'package:flutter_states/pages/page2_page.dart';
import 'package:flutter_states/services/usuario_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UserService(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'page1',
        routes: {
          'page1': (context) => const Page1(),
          'page2': (context) => const Page2(),
        },
      ),
    );
  }
}
