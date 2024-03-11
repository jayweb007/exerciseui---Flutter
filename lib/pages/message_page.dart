import 'package:exerciseui/components/recieve_message.dart';
import 'package:exerciseui/components/send_message.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

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
                    child: SizedBox(
                      width: size.width,
                      child: const Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RecieveMessage(
                                  message: "Hi jason! how are you?",
                                  time: "11:04"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SendMessage(
                                  message: "Hi jason! how are you?",
                                  time: "11:04"),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RecieveMessage(
                                  message: "Hi jason! how are you?",
                                  time: "11:04"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SendMessage(
                                  message: "Hi jason! how are you?",
                                  time: "11:04"),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RecieveMessage(
                                  message: "🥰🥰🥰🥰🥰🥰🥰", time: "1:52"),
                            ],
                          ),
                        ],
                      ),
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
      height: size.height / 5.5,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, top: 70.0, right: 25.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      color: Colors.lightBlue[800],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white70,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "James Moh",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold),
                    ),
                    // const SizedBox(
                    //   height: 3.0,
                    // ),
                    Text(
                      "Online",
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
                    Icons.call,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
