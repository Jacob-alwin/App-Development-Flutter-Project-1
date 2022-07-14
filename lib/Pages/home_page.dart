// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_youtube/Pages/util/emoticon_face.dart';
import 'package:flutter_youtube/Pages/util/exercise_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          //greeting row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Hi Jacob
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hai , Jacob',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          "23 Jan 2022",
                          style: TextStyle(color: Colors.blue[100]),
                        )
                      ],
                    ),

                    // Notification

                    Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(Icons.notifications, color: Colors.white))
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                //search bar
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),

                SizedBox(
                  height: 25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),

                SizedBox(
                  height: 25,
                ),

                // Emojis
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //badly

                    Column(
                      children: [
                        EmoticonFace(
                          emoticonface: '😒',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bad',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    //fine

                    Column(
                      children: [
                        EmoticonFace(
                          emoticonface: '😁',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Happy',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    //well

                    Column(
                      children: [
                        EmoticonFace(
                          emoticonface: '😘',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Loved',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),

                    //excellent

                    Column(
                      children: [
                        EmoticonFace(
                          emoticonface: '😎',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Cool',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),

          Expanded(
            child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      //exersise heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Exersises",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      //listview of exercise
                      Expanded(
                        child: ListView(
                          children: [
                            ExersiceTitle(
                              color: Colors.orange,
                              icon: Icons.favorite,
                              exerciseName: 'Speaking Skills',
                              numberOfExercise: 15,
                            ),
                            ExersiceTitle(
                              color: Colors.green,
                              icon: Icons.person,
                              exerciseName: 'Listening Skills',
                              numberOfExercise: 20,
                            ),
                            ExersiceTitle(
                              color: Colors.red,
                              icon: Icons.star,
                              exerciseName: 'Managing Tasks',
                              numberOfExercise: 9,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
          )
        ]),
      ),
    );
  }
}
