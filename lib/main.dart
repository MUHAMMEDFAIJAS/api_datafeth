import 'package:api_test_1/controller/provider_functions.dart';
import 'package:api_test_1/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProviderFunctions(),
        )
      ],
      child: const MaterialApp(
        home: Homescreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
