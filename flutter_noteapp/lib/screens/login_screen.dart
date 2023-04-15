import 'package:flutter/material.dart';
import 'package:flutter_noteapp/screens/screens.dart';
import 'package:flutter_noteapp/themes/app_theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
}