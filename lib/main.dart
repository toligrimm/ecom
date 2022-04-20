import 'package:ecom/pages/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Ecommerce());


class Ecommerce extends StatelessWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomePage(),
        );
  }
}
