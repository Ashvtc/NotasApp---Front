import 'package:flutter/material.dart';

class PantallaInicio extends StatefulWidget {
  const PantallaInicio({Key? key}) : super(key: key);

  @override
  State<PantallaInicio> createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFAFAFA),
      body: SafeArea(
        child: Column(
          children: <Widget> [
            //Imagen principal
            Image.asset("assets/NoteApp.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            //Imagen Nombre App
            Image.asset("assets/NotasAppColor.png",
              fit: BoxFit.cover,
            ),
            //Botones
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 10,
              ),
              child: Row(
                children: [
                  Expanded(
                    //Botón 'iniciar sesion'
                    child: MaterialButton(
                      color: const Color(0xFFEDC123),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "Iniciar Sesión",
                          style: TextStyle(
                            //fontFamily:
                            color: Color(0xff1f1f1f),
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //body(context),
            //login
            //crear cuenta
          ],
        ),
      ),
    );
  }
}

Widget body(context) {
  Size size = MediaQuery.of(context).size;
  return Column(
    children: <Widget> [
      SizedBox(
        height: size.height *0.2,
        child: Stack(
          children: <Widget>[
            Container(
              
            )
          ],
        ),
      ),
    ],
  );
}