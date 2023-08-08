import 'package:flutter/material.dart';
import 'package:tutorial/components/post_item.dart';
import 'package:tutorial/styles/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.background,
          //elevation: 0,
          title: const Text("data"),
          actions: const [
            Icon(Icons.location_on_outlined),
          ],
        ),
        body: ListView(
          children: mockUsersFromServer(),
        ));
  }

  List<Widget> mockUsersFromServer() {
    List<Widget> users = [];
    for (var i = 0; i < 1000; i++) {
      users.add(PostItem());
    }
    return users;
  }
}
