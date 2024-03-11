import 'package:flutter/material.dart';

class PersonCard extends StatelessWidget {
  final String title;
  final String category;
  final String icon;
  final Color iconBgColor;
  final bool isActive;

  const PersonCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.iconBgColor,
      required this.isActive,
      required this.category});

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
                          vertical: 10.0, horizontal: 12.0),
                      decoration: BoxDecoration(
                          color: iconBgColor,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Image.asset(
                        icon,
                        width: 30.0,
                        height: 30.0,
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
                        category,
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
