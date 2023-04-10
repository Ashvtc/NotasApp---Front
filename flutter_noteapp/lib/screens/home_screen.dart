import 'package:flutter/material.dart';
import 'package:flutter_noteapp/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFAFAFA),
      body: SafeArea(
        child: Padding(padding:const EdgeInsets.only(top: 110.0),
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

              //'iniciar sesion'
              Padding(
                padding: const EdgeInsets.only(top: 45.0, left: 20, right: 20),
                child: Row(
                  children: [ Expanded(
                      child: MaterialButton(
                        color: const Color(0xFFEDC123),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),

                        //Navigator
                        onPressed: () {
                          Navigator.push(context, 
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen()));},
                       
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
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
              ),

              //'crear cuenta'
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
                child: Row(
                  children: [ Expanded(
                      child: MaterialButton(
                        color: Color(0xFFFFFFFF),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Color(0xFFEDC123),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        
                        //Navigator
                        onPressed: () {},
                        
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(children: <Widget>[ 
                              Text(
                                "Crear cuenta",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              const Spacer(),const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}