import 'package:flutter/material.dart';
import 'package:exerciseui/components/emoji_section.dart';
import 'package:exerciseui/components/exercise_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    //
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: Column(
        children: [
          _topSection(size),
          Expanded(
            child: BottomSheet(
                showDragHandle: true,
                enableDrag: false,
                backgroundColor: Colors.white,
                onClosing: () {},
                builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 25.0, top: 15.0, right: 25.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Exercises",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w700),
                            ),
                            Icon(
                              Icons.more_horiz,
                              color: Colors.black,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Expanded(
                          child: ListView(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 0),
                            children: const [
                              ExerciseCard(
                                title: 'Speaking Skills',
                                icon: Icons.favorite,
                                iconBgColor: Colors.orange,
                                numberOfExercise: 16,
                                isActive: true,
                              ),
                              ExerciseCard(
                                title: 'Reading Speed',
                                icon: Icons.person,
                                iconBgColor: Colors.blue,
                                numberOfExercise: 8,
                                isActive: false,
                              ),
                              ExerciseCard(
                                title: 'Writing Skills',
                                icon: Icons.book,
                                iconBgColor: Colors.pink,
                                numberOfExercise: 24,
                                isActive: false,
                              ),
                              ExerciseCard(
                                title: 'Reading Speed',
                                icon: Icons.person,
                                iconBgColor: Colors.blue,
                                numberOfExercise: 8,
                                isActive: false,
                              ),
                              ExerciseCard(
                                title: 'Writing Skills',
                                icon: Icons.book,
                                iconBgColor: Colors.pink,
                                numberOfExercise: 24,
                                isActive: false,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  SizedBox _topSection(Size size) {
    return SizedBox(
      height: size.height / 2.1,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 70.0, right: 25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text(
                      "Hi, jared!",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      "23 jan, 2021",
                      style: TextStyle(
                          color: Colors.blueGrey[300],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[800],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 5.0, bottom: 5.0, right: 20.0),
              decoration: BoxDecoration(
                  color: Colors.lightBlue[800],
                  borderRadius: BorderRadius.circular(20.0)),
              child: const TextField(
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 30.0,
                      color: Colors.white70,
                    ),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(
                        color: Colors.white70, fontWeight: FontWeight.w500)),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "How do you feel?",
                  style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                EmojiSection(
                  emojiIcon: '😞',
                  title: 'Badly',
                ),
                EmojiSection(
                  emojiIcon: '😊',
                  title: 'Fine',
                ),
                EmojiSection(
                  emojiIcon: '😁',
                  title: 'Well',
                ),
                EmojiSection(
                  emojiIcon: '😀',
                  title: 'Excellent',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
