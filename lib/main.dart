import 'package:flutter_application_1/pages/home.dart';
import 'package:material_ui/material_ui.dart';

void main() {
  runApp(const YobanteApp());
}

class YobanteApp extends StatelessWidget {
  const YobanteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yobante Delivery',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFFF7F8F5),
      ),
      home: const HomePage(),
    );
  }
}
