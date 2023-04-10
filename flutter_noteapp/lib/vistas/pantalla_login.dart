import 'package:flutter/material.dart';

class PantallaLogin extends StatefulWidget {
  const PantallaLogin({Key? key}) : super(key: key);

  @override
  _PantallaLoginState createState() => _PantallaLoginState();
}

class _PantallaLoginState extends State<PantallaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFFAFAFA),
      appBar: AppBar(
        backgroundColor: const Color(0XFFFAFAFA),
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
          Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF000000),),
        ),
      ),
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
              //const Spacer(),
              //Imagen Nombre App
              Image.asset("assets/notasappcolor.png",
                width: 150,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ),
    );
  }
}