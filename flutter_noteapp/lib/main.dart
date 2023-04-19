import 'package:flutter/material.dart';
import 'package:flutter_noteapp/router/app_routes.dart';
import 'package:flutter_noteapp/services/users_service.dart';
import 'package:flutter_noteapp/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}


class AppState extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MultiProvider(
      provider: [
        ChangeNotifierProvider(create: (_) => UsersService())
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NoteApp',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme,
    );
  }
}