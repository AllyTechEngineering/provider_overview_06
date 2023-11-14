import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_overview_06/models/dog.dart';
import 'package:provider_overview_06/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Dog>(
      create: (context) => Dog(name: 'dog05', breed: 'breed05', age: 3),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Provider 05',
        theme: ThemeData(
          primaryColor: Colors.blue,
          useMaterial3: true,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
