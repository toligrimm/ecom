import 'package:ecom/pages/homepage.dart';
import 'package:ecom/pages/auth/signinpage.dart';
import 'package:flutter/widgets.dart';


final Map<String, WidgetBuilder> routes = {
  HomePage.routeName: (context) => const HomePage(),
  HomePage.routeName: (context) => const SigninPage(),
};