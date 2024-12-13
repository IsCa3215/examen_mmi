import 'package:examen_mmi/routes/app_routes_mmi.dart';
import 'package:examen_mmi/screens/list_view_screen.dart';
import 'package:examen_mmi/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignInScreenMmi extends StatelessWidget {
  const SignInScreenMmi({super.key});

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'usuario': 'adsdda',
      'password': 'tal',
    };

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              FlutterLogo(
                size: 100,
              ),
              const SizedBox(height: 30),
              CustomTextFormFieldMmi(
                helperText: "Usuario",
                labelText: "Usuario",
                hintText: "Introduce un usuario",
                icono: Icons.person_3_rounded,
                formProperty: 'Usuario',
                formValues: formValues,
                obscureText: false,
              ),
              CustomTextFormFieldMmi(
                helperText: "Contraseña",
                labelText: "Contraseña",
                hintText: "Introduzca una contraseña",
                icono: Icons.password,
                formProperty: 'Contraseña',
                formValues: formValues,
                obscureText: true,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (!myFormKey.currentState!.validate()) {
                      print('Error en el formulario');

                      return;
                    } else {
                      print(formValues);
                      Navigator.pushNamed(context, AppRoutesMmi.MenuOptions[2].route);
                    }
                  },
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Sign in')))),
              Padding(
                padding: const EdgeInsets.all(120.0),
                child: FloatingActionButton(onPressed:() {Navigator.pop(context);}, child: const Icon(Icons.close), elevation: 5,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
