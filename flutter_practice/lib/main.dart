import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Account() {
    return;
  }

  Add_friend() {
    return;
  }

  Logout() {
    return;
  }

  Search() {
    return;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: Account,
            icon: Icon(Icons.account_circle_rounded),
          ),
          centerTitle: true,
          title: Text("Startup"),
          actions: [
            IconButton(
              onPressed: Add_friend,
              icon: Icon(Icons.person_add_sharp),
            ),
            IconButton(onPressed: Logout, icon: Icon(Icons.login_outlined)),
            IconButton(onPressed: Search, icon: Icon(Icons.search)),
          ],
        ),
      ),
    );
  }
}
