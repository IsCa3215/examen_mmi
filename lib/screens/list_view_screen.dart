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
              child: Image(image: NetworkImage('https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg')),
              radius: 20,
            ),
          )
        ],
      ),
      body: ListView.separated(
        
        itemBuilder: (context, index) => ListTile(
              trailing: const Icon( Icons.arrow_forward_ios_outlined),
              title: Text(options[index]),
              onTap: () {
                switch(index){
                  case'Pistas':
                    print('Pistas');
                    break;
                  case'Monitores':
                    print('Monitores');
                    break;
                  case'Reservas':
                    AlertDialog(
                      title: const Text('Reservas'),
                      content: const Text('Reservas no disponibles'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context), 
                          child: const Text('Cerrar')
                          )
                      ],
                    );
                    break;
                }
                final indice = options[index];
                print( indice );
              },
            ), 
        separatorBuilder:(context, index) => const Divider(), 
        itemCount: options.length,
        
      )
    );
  }
}