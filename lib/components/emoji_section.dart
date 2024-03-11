import 'package:flutter/material.dart';

class EmojiSection extends StatelessWidget {
  final String title;
  final String emojiIcon;

  const EmojiSection({super.key, required this.title, required this.emojiIcon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            decoration: BoxDecoration(
                color: Colors.lightBlue[800],
                borderRadius: BorderRadius.circular(10.0)),
            child: Text(
              emojiIcon,
              style: const TextStyle(fontSize: 30.0),
            )),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          title,
          style: const TextStyle(
              color: Colors.white70, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
