import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_noteapp/screens/screens.dart';
import 'package:flutter_noteapp/themes/app_theme.dart';
import '../models/user.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.bgGray,

      //AppBar (Icon arrow)
      appBar: AppBar(
        backgroundColor: AppTheme.bgGray,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios, color: Color(0XFF000000)),
        ),
      ),
      
      body: SafeArea(
        child: Padding(padding:const EdgeInsets.only(top: 10, bottom: 20.0),
          child: Column(
              children: <Widget> [
          
                //Imagen principal
                Image.asset("assets/NoteAppD.png",
                  width: 235,
                  fit: BoxFit.cover,
                ),const Spacer(),
              
          
                //Imagen Nombre App
                Image.asset("assets/NotasAppColor.png",
                  width: 140,
                  fit: BoxFit.cover,
                ),
                
                //Input 'Usuario o correo'
                Padding(padding: EdgeInsets.only(top:40, left:20.0, right: 20.0, bottom: 35),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[ 
                    Text(
                      "Usuario o correo",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color(0x3F000000),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '  Ingrese su usuario o correo',
                            hintStyle: TextStyle(color: Color(0x3B000000),),
                          ),),
                      ),
                    ],
                  ),), 

                //Input 'Contraseña'
                Padding(padding: EdgeInsets.only(top:10, left:20.0, right: 20.0, bottom: 10),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[ 
                    Text(
                      "Contraseña",
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFFFFF),
                        border: Border.all(
                          color: Color(0x3F000000),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '  Ingrese su contraseña',
                            hintStyle: TextStyle(color: Color(0x3B000000),),
                          ),
                        ),
                      ),
                    ],
                  ),), const Spacer(),

                //Button 'iniciar sesion'
                Padding(padding: const EdgeInsets.only(top: 30.0, left: 20, right: 20, bottom: 30),
                child: Row(
                  children: [ Expanded(
                      child: MaterialButton(
                        color: const Color(0xFFEDC123),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),

                        //Navigator
                        onPressed: () {
                          final Future<User> user = getUser();
                          final route = MaterialPageRoute(builder: (context) => const DashboardScreen());
                          Navigator.pushReplacement(context, route);
                        },
                          //Navigator.push(context,MaterialPageRoute(builder: (context) => const DashboardScreen()));},

                        child: Padding(padding: EdgeInsets.all(12.0),
                          child: Column(children: <Widget>[ 
                              Text(
                                "Iniciar Sesión",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ), const Spacer(),

              ],
            ),
          ),
        ),
   );
  }
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}