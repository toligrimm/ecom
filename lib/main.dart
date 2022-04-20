import 'package:ecom/pages/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Ecommerce());


class Ecommerce extends StatelessWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: const HomePage(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: CupertinoColors.systemBackground,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.indigo[900]),
        ),
        scaffoldBackgroundColor: CupertinoColors.secondarySystemBackground,
        ),
      );

  }
}
