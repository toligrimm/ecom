import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Users> fetchUsers() async {
  final response = await http
      .get(Uri.parse('https://fakerestapi.azurewebsites.net/api/v1/Users'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Users.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Users {
  final int userName;
  final int id;
  final String password;

  const Users({
    required this.userName,
    required this.id,
    required this.password,
  });

  factory Users.fromJson(Map<String, dynamic> json) {
    return Users(
      userName: json['userName'],
      id: json['id'],
      password: json['password'],
    );
  }
}


class RestTest extends StatefulWidget {
  const RestTest({Key? key}) : super(key: key);

  @override
  _RestTestState createState() => _RestTestState();
}

class _RestTestState extends State<RestTest> {
  late Future<Users> futureUsers;

  @override
  void initState() {
    super.initState();
    futureUsers = fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Users>(
            future: futureUsers,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.password);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}