import 'package:flutter/material.dart';
import 'package:flutter_noteapp/vistas/pantalla_login.dart';

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
        child: Padding(
          padding:const EdgeInsets.only(top: 110.0),
          child: Column(
            children: <Widget> [
              //Imagen principal
              Image.asset("assets/noteappd.png",
                width: 220,
                fit: BoxFit.cover,
              ),
              const Spacer(),
              //Imagen Nombre App
              Image.asset("assets/notasappcolor.png",
                width: 150,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              const Spacer(),
              //Botón 'iniciar sesion'
              Padding(
                padding: const EdgeInsets.only(top: 45.0, left: 20, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        color: const Color(0xFFEDC123),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(
                              builder: (context) => const PantallaLogin())
                          );
                        },
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
              //Botón 'crear cuenta'
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        color: Color(0xFFFFFFFF),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xFFEDC123),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text(
                            "Crear cuenta",
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
              const Spacer(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}