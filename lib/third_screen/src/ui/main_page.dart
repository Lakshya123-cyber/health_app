import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;
  int _topIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(
                  height: 72,
                  child: Container(
                    decoration: const BoxDecoration(
                        // color: Colors.blue,
                        ),
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        var _day = DateTime.now().add(Duration(days: index));
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _topIndex = index;
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 16, top: 8, bottom: 8),
                            child: Container(
                              height: 58,
                              width: 58,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.2),
                                    offset: const Offset(-1, -1),
                                  )
                                ],
                                gradient: _topIndex == index
                                    ? const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                            Colors.red,
                                            Colors.deepOrange,
                                            Colors.yellow,
                                            Colors.green,
                                            Colors.blue,
                                          ])
                                    : null,
                              ),
                              padding:
                                  EdgeInsets.all(_topIndex == index ? 2 : 0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      _day.day.toString(),
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      weeklyConverter(_day.weekday),
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: _topIndex == index
                                              ? null
                                              : Colors.white,
                                          fontWeight: FontWeight.bold,
                                          foreground: _topIndex == index
                                              ? (ui.Paint()
                                                ..shader = ui.Gradient.linear(
                                                    const Offset(0, 0),
                                                    const Offset(50, 0), [
                                                  Colors.red,
                                                  Colors.deepOrange,
                                                  Colors.yellow,
                                                  Colors.green,
                                                  Colors.blueAccent,
                                                ], [
                                                  0.0,
                                                  0.25,
                                                  0.5,
                                                  0.75,
                                                  1.0
                                                ]))
                                              : null),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 100,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "OBJECTIVE COMPLETION",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "40%",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Spacer(),
                            Text(
                              "1159",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.white),
                            ),
                            Text(
                              " / 3000 Kcal",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.grey),
                            )
                          ],
                        ),
                        Container(
                          height: 8,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width / 1.8,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Colors.blue,
                                      Colors.green,
                                      Colors.lightGreenAccent,
                                      Colors.yellowAccent,
                                      Colors.orangeAccent,
                                      Colors.deepOrange,
                                      Colors.red,
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 540,
                  width: double.infinity,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.blue,
                          Colors.green,
                          Colors.lightGreenAccent,
                          Colors.yellowAccent,
                          Colors.orangeAccent,
                          Colors.deepOrange,
                          Colors.red,
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(1.5),
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.black,
                      ),
                      child: Container(
                        height: double.infinity,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                        ),
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(
                                  Icons.check,
                                  color: Colors.white,
                                ),
                                Text(
                                  " Breakfast",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Spacer(),
                              ],
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            Expanded(
                                child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 16),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 12),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 32,
                                          width: 32,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            gradient: LinearGradient(
                                              colors: [
                                                Colors.red,
                                                Colors.deepOrange,
                                                Colors.yellow,
                                                Colors.green,
                                                Colors.blueAccent,
                                              ],
                                              begin: Alignment.topLeft,
                                              end: Alignment.topRight,
                                            ),
                                          ),
                                          padding: const EdgeInsets.all(2),
                                          child: const CircleAvatar(
                                            foregroundColor: Colors.white,
                                            backgroundColor: Colors.black,
                                            child: Icon(
                                              Icons.check,
                                              size: 16,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: const [
                                              Text(
                                                "Smoking Salmon",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 4,
                                              ),
                                              Text(
                                                "232g",
                                                style: TextStyle(
                                                  color: Colors.yellow,
                                                  fontSize: 12,
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                              itemCount: 5,
                            )),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 42,
                              child: Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                          color: Colors.blue,
                                        )),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(
                                          Icons.local_fire_department,
                                          color: Colors.blue,
                                          size: 16,
                                        ),
                                        Text(
                                          "748 kcal",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                      child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                          color: Colors.yellow,
                                        )),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(
                                          Icons.rice_bowl,
                                          color: Colors.yellow,
                                          size: 16,
                                        ),
                                        Text(
                                          "70g Carbs",
                                          style: TextStyle(
                                            color: Colors.yellow,
                                            fontSize: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                      child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                          color: Colors.red,
                                        )),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: const [
                                        Icon(
                                          Icons.egg_alt,
                                          color: Colors.red,
                                          size: 16,
                                        ),
                                        Text(
                                          "65g Prot",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 12,
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          border: Border.all(
                                            color: Colors.pink,
                                          )),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Icon(
                                            Icons.water_drop,
                                            color: Colors.pink,
                                            size: 16,
                                          ),
                                          Text(
                                            "23g Fats",
                                            style: TextStyle(
                                              color: Colors.pink,
                                              fontSize: 12,
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String weeklyConverter(int weekly) {
    switch (weekly) {
      case 1:
        return "MON";
      case 2:
        return "TUE";
      case 3:
        return "WED";
      case 4:
        return "THR";
      case 5:
        return "FRI";
      case 6:
        return "SAT";
      case 7:
        return "SUN";
      default:
        return "??";
    }
  }
}
