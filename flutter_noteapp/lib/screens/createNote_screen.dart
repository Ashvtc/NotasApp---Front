import 'package:flutter/material.dart';
import 'package:flutter_noteapp/screens/screens.dart';
import '../themes/app_theme.dart';

class CreateNoteScreen extends StatelessWidget {
   
  const CreateNoteScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final myFormKey = GlobalKey<FormState>();

    final Map<String,String> formValues = {
          'file':'',
          'body':'',
    };

    return  Scaffold(
      backgroundColor: AppTheme.bgGray,
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
      body: SafeArea(
        child: Padding(padding:const EdgeInsets.only(top: 10, bottom: 20.0),
          child:
//---------- Form Setup -------------------
           Form (

              key: myFormKey,
              child: Column(
              children: <Widget> [

//----------Input 'File Select'----------
                Padding(padding: EdgeInsets.only(top:20, left:20.0, right: 20.0, bottom: 10),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[ 
                    Text(
                      "Categoria de la Nota",
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
                      child: DropdownButtonFormField(
                        items: [
                        DropdownMenuItem(value:'defauld',child: Text('Defauld'),)
                      ],
                      onChanged: (value) {
                        print(value);
                        formValues['file'] =value ?? 'Defauld';
                      } ,
                      
                      )
                      ),
                    ],
                  ),),

//----------Input 'Note body----------
                Padding(padding: EdgeInsets.only(top:10, left:20.0, right: 20.0, bottom: 10),
                  child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[ 
                    Text(
                      "Descripción",
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
                        onChanged: (value){ formValues['body'] = value;},
                        autofocus: true,
                        validator:(value){
                          if(value == null) return 'Este campo es requerido';
                        },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Ingrese el contenido de la descripción',
                            hintStyle: TextStyle(color: Color(0x3B000000),),
                          ),
                        ),
                      ),
                    ],
                  ),), 


//----------Button 'Crear cuenta'----------
                Padding(padding: const EdgeInsets.only(top: 25.0, left: 20, right: 20, bottom: 30),
                child: Row(
                  children: [ Expanded(
                      child: MaterialButton(
                        color: const Color(0xFFEDC123),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      

                      //Navigator
                        onPressed: () {
                    
                            if(!myFormKey.currentState!.validate()){
                              return;
                            }




                        },


                        child: Padding(padding: EdgeInsets.all(12.0),
                          child: Column(children: <Widget>[ 
                              Text(
                                "Crear nota",
                                style: Theme.of(context).textTheme.displaySmall,
                              ),],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),],
            ),
          ),
          ),
        ),
    );
  }
}