import 'package:examen_mmi/widgets/Custo_Widget_Screen_mmi.dart';
import 'package:flutter/material.dart';
import 'package:examen_mmi/widgets/widgets.dart';

class PistasScreenMmi extends StatelessWidget {
  const PistasScreenMmi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
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
                    imageUrl: 'https://allforpadel.com/img/cms/pistas/fx2-1.jpg',
                    description: 'Eiusmod culpa duis deserunt do sit eu enim ut excepteur officia anim quis. Officia velit ad incididunt duis dolore aliquip minim magna aliquip. Magna non fugiat enim ullamco in commodo esse et minim. Reprehenderit est aliquip in consequat est mollit in eiusmod consectetur irure.',
                      
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
                    imageUrl: 'https://i.etsystatic.com/43797977/r/il/1e3818/5017534703/il_fullxfull.5017534703_biv6.jpg',
                    description: 'Y esta pues colores supongo blostes.',
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