import 'package:flutter/material.dart';
import 'package:hotel_app/presentation/routes/app_router.dart';

class MyApp extends StatelessWidget {
  final _router = AppRouter().router;

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Hotel App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}

