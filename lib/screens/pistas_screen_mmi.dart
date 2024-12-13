import 'package:examen_mmi/widgets/Custo_Widget_Screen_mmi.dart';
import 'package:flutter/material.dart';

class PistasScreenMmi extends StatelessWidget {
  const PistasScreenMmi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 50,
              child: Image(image: NetworkImage('https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg')),
            ),
          )
        ],
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CustomWidgetScreenMmi(
                    title: 'Imagen 1',
                    imageUrl:
                        'https://allforpadel.com/img/cms/pistas/fx2-1.jpg',
                    description:
                        'Eiusmod culpa duis deserunt do sit eu enim ut excepteur officia anim quis. Officia velit ad incididunt duis dolore aliquip minim magna aliquip. Magna non fugiat enim ullamco in commodo esse et minim. Reprehenderit est aliquip in consequat est mollit in eiusmod consectetur irure.',
                    boton: 'Reservar',
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CustomWidgetScreenMmi(
                    title: 'Imagen 2',
                    imageUrl: 'https://barbastro.org/images/areas/deportes/Piscina_climatizada_Large.jpg',
                    description: 'Do ullamco eu enim amet quis consectetur deserunt enim officia in. Consectetur voluptate do occaecat pariatur fugiat enim eu eu. In aute non nulla laborum. Proident ut aliquip est nostrud ea aliquip. Magna et pariatur ut minim. Ad irure exercitation pariatur in incididunt sit qui incididunt.',
                    boton: 'Reservar',
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
