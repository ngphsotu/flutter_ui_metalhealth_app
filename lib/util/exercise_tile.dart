import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final Color color;
  final String exerciseName;
  final int numofExercise;

  const ExerciseTile({
    super.key,
    required this.icon,
    required this.color,
    required this.exerciseName,
    required this.numofExercise,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: color,
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      exerciseName,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    // Subtitle
                    Text(
                      numofExercise < 2
                          ? '$numofExercise Exercise'
                          : '$numofExercise Exercises',
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
