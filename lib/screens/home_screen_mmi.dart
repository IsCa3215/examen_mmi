import 'package:examen_mmi/screens/Sign_in_screen_mmi.dart';
import 'package:flutter/material.dart';
import 'package:examen_mmi/routes/app_routes_mmi.dart';
class HomeScreenMmi extends StatelessWidget {
   
  const HomeScreenMmi({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        
        //backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: Center(
       
        child: ListView(
          children: [
            FlutterLogo(
              size: 200,),
            const Divider(),
            FloatingActionButton(

              onPressed: () {
                Navigator.pushNamed(context, AppRoutesMmi.MenuOptions[1].route);
              }, child: const Text("Sign In") )
        ]
        )
      ),
      );
  }
}