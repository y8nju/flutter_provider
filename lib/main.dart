import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerexample/counter_model.dart';
import 'package:providerexample/home_screen.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => CounterModel(),
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
