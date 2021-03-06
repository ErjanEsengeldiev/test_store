import 'package:flutter/material.dart';
import 'package:stores_kg/main_screen/main_screen.dart';
import 'package:stores_kg/main_screen/main_screen_model.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreenModelProvider(
              model: MainScreenModel(),
              child: const MainScreen(),
            ),
      },
    );
  }
}
