import 'package:ecom/pages/homepage.dart';
import 'package:flutter/material.dart';

class Ecommerce extends StatelessWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.grey),
        );
  }
}
