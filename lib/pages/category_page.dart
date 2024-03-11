import 'package:flutter/material.dart';
import 'package:exerciseui/components/person_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
                              "Category",
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
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 15.0, bottom: 15.0),
                                child: Container(
                                  height: 70,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.purple,
                                      gradient: const LinearGradient(colors: [
                                        Colors.deepPurple,
                                        Colors.purpleAccent,
                                      ])),
                                  child: const Text(
                                    "Relationship",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Container(
                                  height: 70,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.purple,
                                      gradient: LinearGradient(colors: [
                                        Colors.blue.shade900,
                                        Colors.blueAccent,
                                      ])),
                                  child: const Text(
                                    "Career",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 15.0, bottom: 15.0),
                                child: Container(
                                  height: 70,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.purple,
                                      gradient: LinearGradient(colors: [
                                        Colors.orange.shade900,
                                        Colors.orangeAccent,
                                      ])),
                                  child: const Text(
                                    "Education",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 15.0),
                                child: Container(
                                  height: 70,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: Colors.purple,
                                      gradient: LinearGradient(colors: [
                                        Colors.pink.shade900,
                                        Colors.pinkAccent,
                                      ])),
                                  child: const Text(
                                    "Other",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Consultant",
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
                              PersonCard(
                                title: 'James Moh',
                                icon: 'assets/man.png',
                                iconBgColor: Colors.green,
                                category: 'Education',
                                isActive: true,
                              ),
                              PersonCard(
                                title: 'John Doe',
                                icon: 'assets/woman.png',
                                iconBgColor: Colors.purple,
                                category: 'Relationship',
                                isActive: false,
                              ),
                              PersonCard(
                                title: 'Wills Smith',
                                icon: 'assets/boy.png',
                                iconBgColor: Colors.teal,
                                category: 'Career',
                                isActive: false,
                              ),
                              PersonCard(
                                title: 'Cole Paul',
                                icon: 'assets/woman.png',
                                iconBgColor: Colors.brown,
                                category: 'Other',
                                isActive: false,
                              ),
                              PersonCard(
                                title: 'Gallager David',
                                icon: 'assets/man.png',
                                iconBgColor: Colors.cyan,
                                category: 'Career',
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
      height: size.height / 3.5,
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
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
