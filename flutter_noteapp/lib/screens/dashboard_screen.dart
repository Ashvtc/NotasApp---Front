import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_noteapp/models/user.dart';
import 'package:flutter_noteapp/screens/screens.dart';

import '../sidebar_menu.dart';
import '../themes/app_theme.dart';
import '../widgets/widgets.dart';
import 'package:http/http.dart' as http;

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final urlBase = '/users/2';

  Future<User> getUser() async {
    var url = Uri.http('localhost:8888', '/users/2');

    try {
      var response = await http.get(url);
      if (response.statusCode == 200) {
        print(response.body);
        final user = jsonDecode(response.body);
        return user;
      } else {
        print("Error");
        throw Exception("Fallo la conexion");
      }
    } catch (e) {
      print(e);
      throw Exception("Fallo la conexion");
    }
  }

  @override
  void initState() {
    Future<User> user = getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        drawer: const SideBar(),
        appBar: AppBar(
          backgroundColor: AppTheme.bgGray,
          elevation: 0,
          title: Image.asset(
            "assets/NotasAppColor.png",
            width: 100,
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: AppTheme.text_dark),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, color: AppTheme.text_dark),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Buscar Proximamente')));
              },
            ),
          ],
          bottom: const TabBar(
            indicatorColor: AppTheme.primary,
            tabs: <Widget>[
              Tab(
                text: 'Todos',
              ),
              Tab(
                text: 'Universidad',
              ),
              Tab(
                text: 'Trabajo',
              ),
              Tab(
                text: 'Hogar',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                userNotes(
                    noteText: 'sdgssssssss',
                    date: 'date',
                    color: AppTheme.note_1),
                userNotes(
                    noteText: 'sdg', date: 'date', color: AppTheme.note_2),
                userNotes(
                    noteText: 'sdg', date: 'date', color: AppTheme.note_2),
                userNotes(
                    noteText: 'sdg', date: 'date', color: AppTheme.note_3),
                userNotes(
                    noteText: 'sdg', date: 'date', color: AppTheme.note_3),
              ],
            ),
            GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                userNotes(
                    noteText: 'sdg', date: 'date', color: AppTheme.note_1),
              ],
            ),
            GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                userNotes(
                    noteText: 'sdg', date: 'date', color: AppTheme.note_2),
                userNotes(
                    noteText: 'sdg', date: 'date', color: AppTheme.note_2),
              ],
            ),
            GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                userNotes(
                    noteText: 'sdg', date: 'date', color: AppTheme.note_3),
                userNotes(
                    noteText: 'sdg', date: 'date', color: AppTheme.note_3),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            final route = MaterialPageRoute(
                builder: (context) => const CreateNoteScreen());
            Navigator.pushReplacement(context, route);
          },
          backgroundColor: AppTheme.primary,
          child: const Icon(
            Icons.add,
            color: AppTheme.text_dark,
          ),
          elevation: 2,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
