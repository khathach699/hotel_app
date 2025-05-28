import 'package:flutter/material.dart';
import 'package:hotel_app/app.dart';
import 'ịnjection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.setupLocator();
  runApp(MyApp());
}
