import 'package:flutter/material.dart';

class AlertScreenMmi extends StatelessWidget {
   
  const AlertScreenMmi({super.key});
  void displayDialog(BuildContext context){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Text('Alerta'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(8)),
        content: const Text('Este es un contenido de alerta y tal'),
        icon: const FlutterLogo(size: 60,),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: const Text('Cerrar')
            )
        ],
      );
    });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
         child: ElevatedButton(onPressed: () {return displayDialog(context);}, child: const Text("Mostrar alerta"))
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}