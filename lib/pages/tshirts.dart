import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TShirts extends StatefulWidget {
  const TShirts({Key? key}) : super(key: key);

  @override
  State<TShirts> createState() => _TShirtsState();
}

class _TShirtsState extends State<TShirts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CupertinoColors.systemGrey5,
        title: const Text('T-Shirts', style: TextStyle(color: Colors.black87),),
      ),
    );
  }
}
