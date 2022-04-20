import 'package:ecom/pages/shoes.dart';
import 'package:ecom/pages/tshirts.dart';
import 'package:flutter/material.dart';
import 'accessories.dart';
import 'bags.dart';
import 'coats.dart';
import 'jeans.dart';
import 'loginpage.dart';

class HomePage extends StatefulWidget {
  static var routeName;

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/logo.jpg', fit: BoxFit.contain, height: 30,),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SigninPage()),
            );
          }, icon: Icon(Icons.person, color: Colors.indigo[900],),)
        ],
        backgroundColor: Colors.orangeAccent,
      ),
      body: Scrollbar(
        isAlwaysShown: true,
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(30),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TShirts()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/merc.jpg',
                    width: 120,
                    height: 120,
                  ),
                  const Text('T-Shirts', style: TextStyle(color: Colors.black87),),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Jeans()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/jeans1.jpg',
                    width: 120,
                    height: 120,
                  ),
                  const Text('Jeans', style: TextStyle(color: Colors.black87),),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Shoes()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/dior.jpg',
                    width: 120,
                    height: 120,
                  ),
                  const Text('Shoes', style: TextStyle(color: Colors.black87),),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Coats()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/coat.jpg',
                    width: 120,
                    height: 120,
                  ),
                  const Text('Coats', style: TextStyle(color: Colors.black87),),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Accessories()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/bottle.jpg',
                    width: 120,
                    height: 120,
                  ),
                  const Text('Accessories', style: TextStyle(color: Colors.black87),),
                ],
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Bags()),
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/backpack.jpg',
                    width: 120,
                    height: 120,
                  ),
                  const Text('Bags', style: TextStyle(color: Colors.black87),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
