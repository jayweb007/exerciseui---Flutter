import 'package:flutter/material.dart';

class ExerciseCard extends StatelessWidget {
  final String title;
  final int numberOfExercise;
  final IconData icon;
  final Color iconBgColor;
  final bool isActive;

  const ExerciseCard(
      {super.key,
      required this.title,
      required this.numberOfExercise,
      required this.icon,
      required this.iconBgColor,
      required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(30.0),
            border: isActive
                ? Border.all(color: Colors.transparent, width: 0.0)
                : Border.all(color: Colors.grey.shade300, width: 1.0),
            boxShadow: isActive
                ? [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      offset: const Offset(0, 20),
                      blurRadius: 30.0,
                      spreadRadius: 0.0,
                    )
                  ]
                : []),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 13.0, horizontal: 15.0),
                      decoration: BoxDecoration(
                          color: iconBgColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Icon(
                        icon,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "$numberOfExercise Exercises",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.more_horiz,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
