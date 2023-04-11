
import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class userNotes extends StatelessWidget {
  
  final String noteText;
  final String date;
  final Color color;
  
  const userNotes({
    super.key, required this.noteText, required this.date, required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: SizedBox(
    width: 200,
    height: 200,
    child: Center(child: Text(noteText)),
        ),
        color: color,
      );
  }
}