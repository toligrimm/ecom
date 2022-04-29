import 'package:ecom/pages/catalog/shoes.dart';
import 'package:ecom/pages/catalog/tshirts.dart';
import 'package:ecom/pages/homepage/searchfield.dart';
import 'package:ecom/pages/homepage/special_offers.dart';
import 'package:flutter/material.dart';
import '../../rest_posts/rest_pics/pics.dart';
import '../../rest_posts/restpage.dart';
import '../auth/signin/signinpage.dart';
import '../auth/signup/signup.dart';
import '../catalog/coats.dart';
import '../catalog/jeans.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo.jpg',
          fit: BoxFit.contain,
          height: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SigninPage()),
              );
            },
            icon: const Icon(Icons.account_circle_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignUp()),
              );
            },
            icon: const Icon(Icons.accessibility),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Column(
                children: const [
                  SearchField(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 300,
              child: Scrollbar(
                isAlwaysShown: true,
                child: GridView.count(
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 3,
                      children: <Widget>[
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 3,
                            shadowColor: Colors.deepPurple[200],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TShirts()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/merc.jpg',
                                width: 100,
                                height: 100,
                              ),
                              const Text(
                                'T-Shirts',
                                style: TextStyle(color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 3,
                            shadowColor: Colors.deepPurple[200],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Jeans()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/jeans1.jpg',
                                width: 100,
                                height: 100,
                              ),
                              const Text(
                                'Jeans',
                                style: TextStyle(color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 3,
                            shadowColor: Colors.deepPurple[200],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Shoes()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/dior.jpg',
                                width: 100,
                                height: 100,
                              ),
                              const Text(
                                'Shoes',
                                style: TextStyle(color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 3,
                            shadowColor: Colors.deepPurple[200],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Coats()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/coat.jpg',
                                width: 100,
                                height: 100,
                              ),
                              const Text(
                                'Coats',
                                style: TextStyle(color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 3,
                            shadowColor: Colors.deepPurple[200],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const UsersPage()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/bottle.jpg',
                                width: 100,
                                height: 100,
                              ),
                              const Text(
                                'Accessories',
                                style: TextStyle(color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 3,
                            shadowColor: Colors.deepPurple[200],
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RestPage()),
                            );
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/backpack.jpg',
                                width: 100,
                                height: 100,
                              ),
                              const Text(
                                'Bags',
                                style: TextStyle(color: Colors.black87),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ),
                ),
            const SizedBox(height: 20,),
            const SizedBox(
              height: 150,
              child: SpecialOffers(),
            )
          ],
        ),
      ),
    );
  }
}
