import 'package:examen_mmi/routes/app_routes_mmi.dart';
import 'package:examen_mmi/screens/pistas_screen_mmi.dart';
import 'package:flutter/material.dart';

class ListviewMmi extends StatelessWidget {

  final options = const['Pistas', 'Monitores', 'Reservas'];
   
  const ListviewMmi({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 1'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 50,
              child: Image(image: NetworkImage('https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg')),
            ),
          )
        ],
      ),
      body: ListView.separated(
        
        itemBuilder: (context, index) => ListTile(
              trailing: const Icon( Icons.arrow_forward_ios_outlined),
              title: Text(options[index]),
              onTap: () {
              Navigator.pushNamed(context, AppRoutesMmi.MenuOptions[index+2].route);
              },
            ), 
        separatorBuilder:(context, index) => const Divider(), 
        itemCount: options.length,
        
      )
    );
  }
}
