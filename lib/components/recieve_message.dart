import 'package:flutter/material.dart';

class RecieveMessage extends StatelessWidget {
  final String message;
  final String time;

  const RecieveMessage({super.key, required this.message, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 250.0,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(15.0),
                topRight: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              )),
          child: Row(
            children: [
              Flexible(
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                  overflow: TextOverflow.visible,
                  softWrap: true,
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              Text(
                time,
                style: const TextStyle(fontSize: 12.0, color: Colors.black87),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20.0,
        )
      ],
    );
  }
}
