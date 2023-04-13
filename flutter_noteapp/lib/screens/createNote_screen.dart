import 'package:flutter/material.dart';
import 'package:flutter_noteapp/screens/screens.dart';
import '../themes/app_theme.dart';

class CreateNoteScreen extends StatelessWidget {
   
  const CreateNoteScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppTheme.bgGray,
      appBar: AppBar(
          backgroundColor: AppTheme.bgGray,
          elevation: 0,
          title: Image.asset("assets/NotasAppColor.png",width: 100,),
          centerTitle: true,
          leading: IconButton(
          onPressed: () {
             final route = MaterialPageRoute(builder: (context) => const DashboardScreen());
             Navigator.pushReplacement(context, route);
          },
          icon: Icon(Icons.arrow_back_ios, color: Color(0XFF000000)),
        ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: AppTheme.text_dark),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Buscar Proximamente')));
              },
            ),
            ],
      ),
      body: Center(
         child: Text('CreateNoteScreen'),
      ),
    );
  }
}