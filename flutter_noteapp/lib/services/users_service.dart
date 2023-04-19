

import 'package:flutter/material.dart';

class UsersService extends ChangeNotifier{

  final String _baseUrl = 'http://localhost:3000/api/auth/';

  final List<Note>  notes = [];

}