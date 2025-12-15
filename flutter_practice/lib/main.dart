import 'package:flutter/material.dart';
import 'custom_widgets.dart';

void main() {
  runApp(const MyApp());
}

class ChatItem {
  final String name;
  final String lastMessage;
  final String avatarUrl;
  bool isRead;
  final DateTime time;

  // Constructor with named parameters
  ChatItem({
    required this.name,
    required this.lastMessage,
    required this.avatarUrl,
    required this.isRead,
    required this.time,
  });
}

class Profile {
  final String username;
  final String gender;
  final int age;
  final String email;
  final DateTime birthday;
  final String profilePic;
  final String userID;

  Profile({
    required this.username,
    required this.age,
    required this.gender,
    required this.userID,
    required this.birthday,
    required this.profilePic,
    required this.email,
  });
}

//these will be variables holding strings later that pull from data base
List<String> messages = [
  "Meow",
  "Meow",
  "Meow",
  "Meow",
  "Meow",
  "Meow",
  "Meow",
  "Meow",
  "Meow",
  "Meow",
  "Meow",
  "Meow",
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leadingWidth: 112,
          leading: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: listUnread(),
                icon: Icon(Icons.account_circle_rounded),
              ),
              IconButton(
                onPressed: account(),
                icon: Icon(Icons.notifications_active),
              ),
            ],
          ),

          centerTitle: true,
          title: Text("Sweeper"),
          actions: [
            IconButton(
              onPressed: addFriend(),
              icon: Icon(Icons.person_add_sharp),
            ),
            IconButton(onPressed: search(), icon: Icon(Icons.search)),
            IconButton(
              onPressed: logout(),
              icon: Icon(Icons.add_circle_outline),
            ),
          ],
          backgroundColor: Colors.blue[100],
        ),
        body: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            return MessageBox(text: messages[index]);
          },
        ),
        bottomNavigationBar: Container(
          height: 80,
          color: Colors.blue[100],
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: search(),
                icon: Icon(Icons.home),
                iconSize: 36,
              ),
              IconButton(
                onPressed: search(),
                icon: Icon(Icons.camera_alt_outlined),
                iconSize: 36,
              ),
              IconButton(
                onPressed: search(),
                icon: Icon(Icons.calendar_month_rounded),
                iconSize: 36,
              ),
              IconButton(
                onPressed: search(),
                icon: Icon(Icons.play_arrow),
                iconSize: 36,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

account() {
  return;
}

addFriend() {
  return;
}

logout() {
  return;
}

search() {
  return;
}

listUnread() {
  return;
}

addChat() {
  return;
}
