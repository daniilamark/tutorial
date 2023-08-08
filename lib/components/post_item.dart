import 'package:flutter/material.dart';
import 'package:tutorial/styles/app_text.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/user1.jpg',
                width: 40,
                height: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              const Text(
                "Markin Daniil",
                style: AppText.subtitle3,
              ),
            ],
          ),
          Image.asset('assets/temp/post1.jpg'),
          const Text(
            "data data data data data data data data data data data data",
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}
