import 'package:flutter/material.dart';
import 'package:grossary_app_demo/model/cart_model.dart';
import 'package:grossary_app_demo/pages/Intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => CartModel(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroPage(),
        ));
  }
}
