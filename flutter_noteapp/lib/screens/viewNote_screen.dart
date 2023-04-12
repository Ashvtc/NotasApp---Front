import 'package:flutter/material.dart';

import '../themes/app_theme.dart';
import 'screens.dart';

class ViewNoteScreen extends StatelessWidget {
   
  const ViewNoteScreen({Key? key}) : super(key: key);
  
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
         child: Text('ViewNoteScreen'),
      ),
    );
  }
}