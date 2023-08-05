import 'package:flutter/material.dart';
import 'package:patrol_cursor_issue/home/home_page.dart';
import 'package:patrol_cursor_issue/home/pin_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patrol Cursor Issue',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/pin': (context) => const PinPage(),
      },
    );
  }
}
