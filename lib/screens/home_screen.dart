import 'package:flutter/material.dart';
import 'package:flutter_ui_metalhealth_app/util/exercise_tile.dart';

import '/util/emoticon_face.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      // appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  // Greattings row
                  _metalappbar(),
                  const SizedBox(height: 25),
                  // Search bar
                  _searchbar(),
                  const SizedBox(height: 25),
                  // How do you feel?
                  _howdoyoufeel(),
                  const SizedBox(height: 25),
                  // 4 different faces
                  _emoticonface(),
                ],
              ),
            ),

            const SizedBox(height: 25),

            //
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(25),
                color: Colors.grey[200],
                child: Center(
                  child: Column(
                    children: [
                      // Exercise heading
                      _exerciseheading(),

                      const SizedBox(height: 20),

                      // List view of exercises
                      Expanded(
                        child: ListView(
                          children: const [
                            ExerciseTile(
                              icon: Icons.favorite,
                              color: Colors.orange,
                              exerciseName: 'Listening Skills',
                              numofExercise: 1,
                            ),
                            ExerciseTile(
                              icon: Icons.person,
                              color: Colors.green,
                              exerciseName: 'Speaking Skills',
                              numofExercise: 3,
                            ),
                            ExerciseTile(
                              icon: Icons.star,
                              color: Colors.pink,
                              exerciseName: 'Reading Skills',
                              numofExercise: 5,
                            ),
                            ExerciseTile(
                              icon: Icons.pageview,
                              color: Colors.red,
                              exerciseName: 'Writing Skills',
                              numofExercise: 7,
                            ),
                            ExerciseTile(
                              icon: Icons.mail,
                              color: Colors.teal,
                              exerciseName: 'Coding Skills',
                              numofExercise: 9,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _bottomnavigationbar(),
    );
  }

  Row _exerciseheading() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Exercises',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Icon(Icons.more_horiz),
      ],
    );
  }

  BottomNavigationBar _bottomnavigationbar() {
    return BottomNavigationBar(
      elevation: 0,
      backgroundColor: Colors.grey[200],
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Mesage'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }

  Row _emoticonface() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Bad
        Column(
          children: const [
            EmoticonFace(emoticonFace: '😩'),
            SizedBox(height: 8),
            Text('Bad', style: TextStyle(color: Colors.white)),
          ],
        ),
        // Fine
        Column(
          children: const [
            EmoticonFace(emoticonFace: '🙂'),
            SizedBox(height: 8),
            Text('Fine', style: TextStyle(color: Colors.white)),
          ],
        ),
        // Well
        Column(
          children: const [
            EmoticonFace(emoticonFace: '😁'),
            SizedBox(height: 8),
            Text('Well', style: TextStyle(color: Colors.white)),
          ],
        ),
        // Excellent
        Column(
          children: const [
            EmoticonFace(emoticonFace: '🥳'),
            SizedBox(height: 8),
            Text('Excellent', style: TextStyle(color: Colors.white)),
          ],
        ),
      ],
    );
  }

  Row _howdoyoufeel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'How do you feel ?',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(Icons.more_horiz, color: Colors.white)
      ],
    );
  }

  Container _searchbar() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue[600],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: const [
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 5),
          Text(
            'Search',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Row _metalappbar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        // Hi Tung!
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hi Tung!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '23 Jan 2021',
              style: TextStyle(
                color: Colors.blue[200],
                fontSize: 12,
              ),
            ),
          ],
        ),

        // Notification
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.blue[500],
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(
            Icons.notifications,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
