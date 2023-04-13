
import 'package:flutter/material.dart';
import 'package:flutter_noteapp/screens/screens.dart';
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
    child: Column(
      children: <Widget>[
        SizedBox(
          height:120,
          child:
          ListTile(
              title: Text(noteText),
            ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(date),
           IconButton(
            icon: const Icon(Icons.edit),
            onPressed: (){
               final route = MaterialPageRoute(builder: (context) => const ViewNoteScreen());
               Navigator.pushReplacement(context, route);
            },
            style: IconButton.styleFrom(
              foregroundColor: AppTheme.note_1,
              backgroundColor: AppTheme.note_2,
              disabledBackgroundColor: AppTheme.note_3,
              hoverColor: AppTheme.note_1,
              focusColor: AppTheme.note_4,
              highlightColor: AppTheme.note_5,
            ),
          ),
          ],
         ),
      ]
    )


        ),
        color: color,
      );
  }
}

    


// leading: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       Icon(leadingnIcon, color: Colors.blueGrey,),
//     ],
//    ),