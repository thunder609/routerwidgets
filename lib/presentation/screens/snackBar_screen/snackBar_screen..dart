import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name='snackBar_Screen';
  const SnackBarScreen({super.key});
void showCustomSnackBar(BuildContext context){
  final snackback= SnackBar(content: const Text('Hola mundo'),
  action: SnackBarAction(label: 'Ok',onPressed: (){}),
  duration:const Duration(seconds: 2),);
      ScaffoldMessenger.of(context).showSnackBar(snackback);
}
void openDialog(BuildContext context){
  showDialog(context: context,
      builder: (context)=>AlertDialog(
       title: const Text('¡Estas Seguro?'),
       content: const Text('el parrafo de dialogo es aqui sjdhf shjshsh hsh'),
        actions:[
          TextButton(onPressed: ()=>context.pop(), child:const Text('Cancelar')),
          FilledButton(onPressed: ()=>context.pop(), child: Text('Aceptar')),
        ]
      ),);
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Mostrar Snack')
      ),
        body:Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              FilledButton.tonal(onPressed:(){
                showAboutDialog(context: context,
                children: [
                  const Text('texto del dialogo')
                ]);
              },
                  child: const Text('Licencias Usadas')),
              

              FilledButton.tonal(
                  onPressed:()=> openDialog(context),
                  child: const Text('Mostar Dialogos')),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text('Mostar'),
          icon:const Icon(Icons.remove_red_eye_outlined),
    onPressed: () =>   showCustomSnackBar(context),
        ),


    );

  }
}
