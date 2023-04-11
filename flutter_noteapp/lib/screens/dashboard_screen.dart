import 'package:flutter/material.dart';

import '../themes/app_theme.dart';
import '../widgets/widgets.dart';


class DashboardScreen extends StatelessWidget {
   
  const DashboardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.bgGray,
        elevation: 0,
        title: Image.asset("assets/NotasAppColor.png",width: 100,),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            // Navigator.of(context).pop();
          },
          icon: const Icon(Icons.menu, color: AppTheme.text_dark ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: AppTheme.text_dark),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),
          ],

      ),
      body: 
      
      Center(child: Column(
        children: const [  
          userNotes(noteText:'sjsjsjsj',date:'date', color:AppTheme.note_1), 
          userNotes(noteText:'sdg'     ,date:'date', color:AppTheme.note_2), 
          userNotes(noteText:'sdg'     ,date:'date', color:AppTheme.note_3), 
          userNotes(noteText:'sfg'     ,date:'date', color:AppTheme.note_4), 
          userNotes(noteText:'kkkk'    ,date:'date', color:AppTheme.note_5), 

        ],
      ) 
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppTheme.primary,
        child: const Icon(Icons.add, color: AppTheme.text_dark,),
        elevation: 2, 
        

      ) ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
