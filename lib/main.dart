import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:farm_app/rice_page.dart';

import 'login_page.dart';

void main() {
  runApp(const Myapp());
  
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:login_page(),
    );
  }
}